# This file is used to create the ubuntu native binary
# version of the ruby gem. It does so by setting up
# an aws instance running ubuntu, building the gem there
# and then downloading the resulting gem.

# To use:
# ruby build-ubuntu-native-binary-gem.rb [branch]
# 
# If you don't specify a branch it will compile the gem in 
# the master branch of http://github.com/decc/decc_2050_model.git 

branch = ARGV[0] || "master"
server_name = ARGV[1] || "decc_2050_model_gem_build_#{branch}"

require 'fog'
require 'pry'

# See https://github.com/fog/fog/ for details on
# how to edit this file

# Need to have a ~/.fog file with AWS credentials
# Sign up with aws.amazon.com then create a ~/.fog
# file with this sort of thing:
# :default:
#   :provider: AWS
#   :aws_secret_access_key: <GET THIS FROM AMAZON>
#   :aws_access_key_id: <GET THIS FROM AMAZON>
#   :region: eu-west-1
puts "Connecting to AWS"
connection =  Fog::Compute.new({
  :provider => 'AWS',
})

servers = connection.servers.all('tag:Name' => server_name)
# FIXME: Needs to check if existing servers are terminated or available!
if servers.empty?
  # This sets up an Ubuntu 12.0.4 Precise high compute instance 
  # As of 22/July/2012 this costs $0.744 per Hour
  puts "Bootstrapping a server"
  server = connection.servers.bootstrap(
    #:image_id => 'ami-1de8d369', # Ubuntu 12.04
    :image_id => 'ami-41cacb35', # Ubuntu 11.10
    :flavor_id=> 'c1.xlarge',
    :private_key_path => '~/.ssh/id_rsa', # Change this if you use something else
    :public_key_path => '~/.ssh/id_rsa.pub', # Change this if you use something else
    :username => 'ubuntu',
    :tags => { 'Name' => server_name }
  )
else
  server = servers.first
  puts "Retrieving server #{server.dns_name}"
end

puts "Waiting for server to be ready"
server.wait_for { ready? }
puts "Sever ready"

puts "You can now:"
puts "ssh ubuntu@#{server.dns_name}"

commands = <<EOT
## REQUIRED LIBRARIES

# Basics
sudo apt-get update
sudo apt-get install -y git build-essential libxml2-dev libxslt-dev zip unzip
sudo apt-get install -y libcurl4-openssl-dev libssl-dev 

# Ruby
sudo apt-add-repository -y ppa:brightbox/ruby-ng-experimental
sudo apt-get update 
sudo apt-get install -y ruby1.9.3

## THE CODE
git clone http://github.com/decc/decc_2050_model.git

# Bundler
sudo gem install --no-ri --no-rdoc bundler

# Compile and build
pwd
cd /home/ubuntu/decc_2050_model
pwd
git checkout #{branch}
bundle
cd ext
rake
cd ..
gem build decc_2050_model.gemspec.binary
EOT

require 'tempfile'
script = Tempfile.new 'setup'
script.puts commands
script.close

puts "Uploading setup code"
server.scp_upload(script.path,'setup.sh')

puts "Running setup code"
results = server.ssh('sh setup.sh')
results.each { |r| r.display_stdout }
results.each { |r| r.display_stderr }

puts "Server setup"
gem_name = server.ssh("ls decc_2050_model | grep .gem$").first.stdout.strip

puts "Tyring to download gem #{gem_name}"
server.scp_download("decc_2050_model/#{gem_name}",".")
puts "Downloaded"

puts "Tearing down server"
server.destroy


# This file is used to create the ubuntu native binary
# version of the ruby gem. It does so by setting up
# an aws instance running ubuntu, building the gem there
# and then downloading the resulting gem.

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


# This sets up an Ubuntu 12.0.4 Precise high compute instance 
# As of 22/July/2012 this costs $0.744 per Hour
puts "Bootstrapping a server"
server = connection.servers.bootstrap(
  :image_id => 'ami-1de8d369',
  :flavor_id=> 'c1.xlarge',
  :private_key_path => '~/.ssh/id_rsa', # Change this if you use something else
  :public_key_path => '~/.ssh/id_rsa.pub', # Change this if you use something else
  :username => 'ubuntu'
)

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
cd decc_2050_model
bundle
cd ext
rake
cd ..
gem build decc_2050_model_binary.gemspec
EOT

puts "Running setup code"
commands.lines do |command|
  command.strip!
  puts command
  results = server.ssh(command)
  results.each { |r| r.display_stdout }
  results.each { |r| r.display_stderr }
end
puts "Server setup"
gem_name = server.ssh("ls | grep .gem$").stdout.strip
puts "Tyring to download gem #{gem_name}"
server.scp_download(gem_name,".")
puts "Downloaded"

puts "Tearing down server"
server.destroy


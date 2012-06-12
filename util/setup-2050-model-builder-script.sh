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


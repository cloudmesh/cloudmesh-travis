
# now that you are in the docker image, switch to the travis user
sudo — travis



# Install a recent ruby (default is 1.9.3)
rvm install 2.3.0
rvm use 2.3.0
gem sources --remove https://rubygems.org/
gem sources -a http://rubygems.org/


# Install travis-build to generate a .sh out of .travis.yml

cd 
cd builds 
git clone https://github.com/travis-ci/travis-build.git 
cd travis-build 
gem install travis 
travis # to create ~/.travis 
ln -s `pwd` ~/.travis/travis-build 
bundle install

# Create ssh key for Github
ssh-keygen -t rsa -b 4096
# Click enter to use default location for key
# You can choose empty passphrase by clicking enter twice
# Now that we have the key, let’s share with Github
less ~/.ssh/id_rsa.pub
# Copy the contents of the id_rsa.pub

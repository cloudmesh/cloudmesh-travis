
sudo apt-get update 
sudo apt-get upgrade

# now that you are in the docker image, switch to the travis user
su — travis
#passwd travis


# Install a recent ruby (default is 1.9.3)
rvm install 2.7.6
rvm use 2.7.6
gem sources --remove https://rubygems.org/
gem sources -a http://rubygems.org/
gem update --system
gem install bundler

# Install travis-build to generate a .sh out of .travis.yml

cd 
cd builds 
git clone https://github.com/travis-ci/travis-build.git 
cd travis-build 
gem install travis 
travis
ln -s `pwd` ~/.travis/travis-build 
bundle install

# Create ssh key for Github
cat /dev/zero | ssh-keygen -t rsa -b 4096 -q -P ""
less ~/.ssh/id_rsa.pub

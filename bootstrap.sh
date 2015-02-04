
#!/bin/sh

yum update

# Install GIT, build-essential & curl
yum -y install git curl

yum -y install epel-release
yum -y install nodejs npm

# Install RVM, Ruby and Rails
su - vagrant -c "gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3"
su - vagrant -c "curl -sSL https://get.rvm.io | bash -s stable"
su - vagrant -c "rvm install ruby-2.2.0"
su - vagrant -c "rvm use ruby-2.2.0@learn-rails --create --ruby-version --default"
su - vagrant -c "gem install rails -v 4.2.0"

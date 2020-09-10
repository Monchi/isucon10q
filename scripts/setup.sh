# path
echo 'export PATH=~/cmd:$PATH' >> ~/.bash_profile
source ~/.bash_profile

# git
git config --global user.email "yukukotani@gmail.com"
git config --global user.name "Monchi"

# netdata
bash <(curl -Ss https://my-netdata.io/kickstart.sh)
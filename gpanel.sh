echo -e "Hello Gpnel wings"
echo -e "Install script"
systemctl enable docker
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt -y install nodejs make gcc g++
mkdir -p /srv/daemon /srv/daemon-data
cd /srv/daemon
curl -L https://github.com/Root-didi/daemon/releases/download/ff/rhs.tar  | tar --strip-components=1 -xzv
npm install --only=production --no-audit --unsafe-perm
nano /srv/daemon/config/core.json
npm start -- debug




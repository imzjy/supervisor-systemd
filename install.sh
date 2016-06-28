#!/usr/bin

# copy files
cp -vr ~/etc/supervisor /etc/supervisor
cp -vr ~/etc/systemd/system/supervisord.service /etc/systemd/system/
mkdir -p /var/log/supervisor

# add to .bashrc(not mandatory)
echo 'alias supervisorctl="supervisorctl -c /etc/supervisor/supervisord.conf"' > ~/.bashrc

# enable on start
systemctl enable supervisord.service
systemctl start supervisord.service
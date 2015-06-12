#/bin/sh

curl https://raw.githubusercontent.com/GetValkyrie/ansible-bootstrap/master/install-ansible.sh | /bin/sh
ansible-galaxy install --ignore-errors Stouts.collectd
ansible-galaxy install --ignore-errors geerlingguy.varnish
target=/etc/ansible/roles/valhalla.cache
if [ ! -e $target ]; then
  mkdir -p /etc/ansible/roles/
  ln -s /vagrant/ $target
fi

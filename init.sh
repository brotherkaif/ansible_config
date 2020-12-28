apt update -y
apt upgrade -y
apt install python -y
apt install ansible -y
ansible-pull -U https://github.com/brotherkaif/ansible-config.git

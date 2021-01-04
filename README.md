# Ansible Configuration
Work in progress repository to hold Ansible configuration files. To be used as part of the improved workflow setup script.

# Initialisation
Run the following on a new machine. The `init.sh` script should install the minimal files needed to execute the ansible playbook.
```sh
# download the script
curl -L init.kaif.dev > init.sh

# IMPORTANT: check script
less init.sh

# make executable and run
chmod +x init.sh
sudo ./init.sh
```

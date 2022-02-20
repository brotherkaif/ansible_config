# Ansible Configuration
This repository contains an Ansible playbook that I use to set up local Linux (Debian) and macOS (Darwin) systems. It's primary focus is to set up a local machine to prep it for general development.

# Initialisation
Run the following on a new machine. The `init.sh` script should install the minimal files needed to execute the ansible playbook.

```sh
# download the script
curl -L init.kaif.dev -o init.sh

# IMPORTANT: check script
less init.sh

# make executable and run
chmod +x init.sh
./init.sh
```

set -e
set -x

# Create a separate process for CentOS? 
# (non-root installation to configure home directory)
sudo dnf install git ansible

mkdir -p ~/Projects

# Using HTTPS to avoid RSA key fingerprint prompt
git clone https://github.com/smsearcy/dotfiles.git ~/Projects/dotfiles
ansible-playbook ~/code/dotfiles/playbook.yml --ask-become-pass --tags basic

set +x
set +e

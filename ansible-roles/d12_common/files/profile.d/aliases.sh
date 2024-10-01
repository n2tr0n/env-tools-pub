# Our custom system aliases

# Custom aliases for ansible control

alias playbook='ansible-playbook'
alias playtest='ansible-playbook -C'
alias playsyntax='ansible-playbook --syntax-check'

# List active permissions on a file or folder
alias lperms='stat -c "%a %n"'

# Make a password hash - for what, i don't remember
alias makepass='python -c "from passlib.hash import sha512_crypt; import getpass; print(sha512_crypt.using(rounds=5000).hash(getpass.getpass()))"'

# Strip comments and blanklines from a configuration file and display whats left
alias configcat='grep -Ev "^$|^#"'

# Netstat Aliases
alias netstat-numeric='netstat -tulpn'
alias netstat-names='netstat -tulp'

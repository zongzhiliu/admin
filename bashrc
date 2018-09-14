export PS1='\w$ '
alias ls='ls --color=auto'
alias grep='grep --color=auto'
#alias wgetar='echo "wget -e robots=off -r -nH -np -l1 --cut-dirs=8 --accept *.tar.gz,*.md5sum <url> "'
alias wgetr='wget -e robots=off -r -nH -np'

#mysql tunnel
alias start_mysql_port_forwarding='if ! screen -ls | grep -q "[0-9]\+.aws_db2_mysql\s"; then screen -S aws_db2_mysql -dm bash -c "AUTOSSH_DEBUG=1 autossh -M 0 -N -L5000:localhost:3306 mysql_tunnel@34.235.71.97 -g -i $HOME/.ssh/tunnel_user -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ServerAliveInterval=10 -o ServerAliveCountMax=1 -o ExitOnForwardFailure=yes -o ControlMaster=no -o ControlPath=/dev/null"; fi'
#alias start_mysql_tunnel='ssh -L 5000:localhost:3306 mysql_tunnel@34.235.71.97'
#start_mysql_port_forwarding #run only once for login



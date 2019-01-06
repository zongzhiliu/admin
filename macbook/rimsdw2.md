# set up to access redshift imsdw

- vim .bash_profile
```
export bastion=auto-abst-bastion-host-lb-542f9513ec56d4ad.elb.us-east-1.amazonaws.com
export redshift=auto-abst-redshift-cluster.cpgxfro2regq.us-east-1.redshift.amazonaws.com
function start_rimsdw2_port_forwarding {
    if ! screen -ls | grep -q "[0-9]\+.aws_rimsdw2_db\s"; then
        screen -S aws_rimsdw2_db -dm bash -c "AUTOSSH_DEBUG=1 autossh -M 0 -N -L9999:$redshift:5439 zach_liu@$bastion -g
        -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null
        -o ServerAliveInterval=10 -o ServerAliveCountMax=1
        -o ExitOnForwardFailure=yes -o ControlMaster=no -o ControlPath=/dev/null"
    fi
}
start_rimsdw2_port_forwarding
alias rimsdw2='PGPASSFILE="${HOME}/.ssh/pgpass_rimsdw2" pgcli -h 127.0.0.1 -p 9999 -U zongzhi_liu dev'
```
- vim .ssh/pgpass_rimsdw2 #chmod 600
```
127.0.0.1:9999:dev:zongzhi_liu:TdvMkJM83qgYgtpEGVBHeSEK
```

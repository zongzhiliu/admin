# set up the dev env on bastion
## anaconda
- install anaconda3
- conda install -c conda-forge htop pgcli git

## git
```
mkdir git; cd git
git clone https://github.com/sema4genomics/s4-oracle-alpha-db.git
cd s4-oracle-alpha-db/
git pull origin zach
git config --global user.name "zach liu"
git checkout zach

cd ..
git clone https://github.com/zongzhiliu/admin.git
cd admin
mkdir rimsdw2
vim main.md
```

## access redshift
- vim .pgpass_rimsdw2
```
auto-abst-redshift-cluster.cpgxfro2regq.us-east-1.redshift.amazonaws.com:5439:dev:zongzhi_liu:TdvMkJM83qgYgtpEGVBHeSEK
```
then chmod 600

- vim .bashrc
```sh
export redshift=auto-abst-redshift-cluster.cpgxfro2regq.us-east-1.redshift.amazonaws.com
function rimsdw2 {
	PGPASSFILE="${HOME}/.ssh/pgpass_rimsdw2" pgcli -h $redshift -p 5439 -U zongzhi_liu dev
}
```



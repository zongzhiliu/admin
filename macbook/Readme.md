# set up the macbook pro
## basic
User: zongzhiliu/xj21q, fingerprint“

## selfservice
zoom, onedrive, printer, slack, xcode (agree)

## 
```
git clone https://github.com/zongzhiliu/admin.git
ln -s ~/github/admin/macbook/bash_profile ~/.bash_profile
rsync -a ~/github/admin/macbook/.ssh ~
ln -s ~/github/admin/macbook/my.cnf ~/.my.cnf
chmod -R 600 ~/.ssh
```

add ~/github/admin/macbook/startup.sh to system preferences - Users & groups - login items

## install home brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install xquartz mysql autossh wget
brew cask install xquartz dia

## software install
printer at home
Adobe: Photoshop Illustrator Acrobat https://www.adobe.com/creativecloud/catalog/desktop.htm
apple: numbers
MySQL: MySQLWorkbench
Anyconnect
Optional: karabiner to remap right option to ctrl

## anaconda
r-essentials rstudio

## database connection
- db2
host = 127.0.1.1
user = zongzhi_liu
password = u5TYN7fg5qpsF475jAtfAZ4E
u5TYN7fg5qpsF475jAtfAZ4E
pager=less -iMSx4 -FX -R
#mysql_tunnel@34.235.71.97 using .ssh/mysql_tunnel

- .mdsw.cnf
[client]
host = s4-radbinf-msdw-de-2017-sean.cbf5xbk4ekux.us-east-1.rds.amazonaws.com
user = zongzhi_liu
password = u5TYN7fg5qpsF475jAtfAZ4E
pager=less -iMSx4 -FX -R
#msdw_tunnel@52.22.79.171 using .ssh/msdw_tunnel

- .imdsw.cnf
[client]
host = testjcappilot.cbf5xbk4ekux.us-east-1.rds.amazonaws.com
user = zongzhi_liu
password = u5TYN7fg5qpsF475jAtfAZ4E
pager=less -iMSx4 -FX -R
#zachary_liu@34.229.161.127 using .ssh/id_rsa:q

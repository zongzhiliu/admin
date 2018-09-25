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

## software install
printer at home
Adobe: Photoshop Illustrator Acrobat https://www.adobe.com/creativecloud/catalog/desktop.htm
apple: numbers
MySQL: MySQLWorkbench
Anyconnect
Optional: karabiner to remap right option to ctrl


## anaconda

r-essentials rstudio

## install home brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install xquartz dia mysql-shell:q


* install dia
```
brew cask install dia
vim /Applications/Dia.app/Contents/Resources/bin/dia
```
Add the following content to line 40 (right before the oascript call)
```
#########################################################
# Ref: http://navkirats.blogspot.de/2014/10/dia-diagram-mac-osx-yosemite-fix-i-use.html
versionOSX=$(sw_vers -productVersion | awk -F '.' '{print $(NF-1)}')
[[ ${versionOSX} -ge 10 ]] && export DISPLAY=:0
#########################################################
```

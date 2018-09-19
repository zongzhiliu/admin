# set up the macbook pro
## basic
User: zongzhiliu/xj21q

## selfservice
zoom, office365, onedrive, printer, slack, xcode

## .bash_profile
rsync -a ~/github/admin/macbook/.ssh ~
ssh tunnel to mysql

## software install
printer work
printer home
Adobe: Photoshop Illustrator Acrobat
MySQL: DbVisualizer MySQLWorkbench Sequel
Anyconnect
karabiner to remap right option to ctrl


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

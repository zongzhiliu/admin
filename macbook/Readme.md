# set up the macbook pro
## basic
User: zongzhiliu/xj21q

## .bash_profile

## software install
printer work
printer home
Slack
MS: outlook, word, excel, powerpoint
Adobe: Photoshop Illustrator Acrobat
MySQL: DbVisualizer MySQLWorkbench Sequel
Anyconnect


## anaconda
r-essentials rstudio

## install home brew
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

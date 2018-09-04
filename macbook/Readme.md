# set up the macbook pro
## basic
User: zongzhiliu/xj21q

## remap keys at startup
#settings - user - login items - add - ~/local/bin/remap...

## software install
printer work
printer home
Slack
Sequel
Dia
Photoshop
Illustrator

## homebrew

## anaconda
r-essentials rstudio
settings - user - login items - add - ~/local/bin/remap...

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

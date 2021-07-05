#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias yayskip='yay --nopgpfetch --mflags --skippgpcheck -S'
alias yayupskip='yay --nopgpfetch --mflags --skippgpcheck -Syu'
alias lst="ls --color=never"
alias lsta="ls --color=never -a"
DEVKITPRO=/opt/devkitpro
DEVKITARM=/opt/devkitpro/devkitARM
DEVKITPPC=/opt/devkitpro/devkitPPC
alias pipes.sh="pipes.sh -p 3 -f 80 -r 10000"
alias adblist="adb shell pm list packages"
alias adbadd="adb install"
alias adbdel="adb uninstall"
: undercover && export PS1='C:${PWD//\//\\\}> '
: undercover && export PS1='C:${PWD//\//\\\}> '

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
# Emulate an MS-DOS prompt in your Linux shell.
# Laszlo Szathmary (jabba.laci@gmail.com), 2011
# Project home page:
# https://ubuntuincident.wordpress.com/2011/02/08/emulate-the-ms-dos-prompt/
#
#
# Modified by Soldier of Fortran
#
# Add to you ~/.bashrc file with: 'source ~/.themes/95/bashrc'

function msdos_pwd
{
    local dir="`pwd`"

    echo $dir | tr '/' '\\'
}

export PS1='C:`msdos_pwd`> '

echo 
echo
echo "Microsoft(R) Windows 95"
echo "   (C)Copyright Microsoft Corp 1981-1996."
echo


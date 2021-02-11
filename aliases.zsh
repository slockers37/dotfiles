# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'          
alias l.="ls -A | egrep '^\.'"      

alias vtop='vtop -t wizard'

#fix obvious typo's
alias cd..="cd .."
alias pdw="pwd"

## Colorize the grep command output for ease of use (good for log files)##
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

#readable output
alias df='df -h'

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

#free
alias free="free -mt"

#continue download
alias wget="wget -c"

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Aliases for software managment
# pacman or pm
#alias pacman="sudo pacman --color auto"
alias update="sudo pacman -Syyu"
alias prm="sudo pacman -Rs --color auto"
alias pins="sudo pacman -S --color auto"
alias psr="sudo pacman -Ss --color auto"
alias pdep="deps p"
alias pclean="sudo pacman -Rns \$(pacman -Qtdq)"

# yay as aur helper - updates everything
alias pksyua="yay -Syu --noconfirm"
alias upall="yay -Syu --noconfirm"
alias yins="yay -S --color auto"
alias yrm="yay -R --color auto"
alias ysr="yay -Ss --color auto"
alias ydep="deps y"

#generate repo databases
alias add-repo="repo-add hefftor-repo.db.tar.gz *.pkg.tar.xz"

#ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#improve png
# alias fixpng="find . -type f -name "*.png" -exec convert {} -strip {} \;"

#add new fonts
alias fc="sudo fc-cache -fv"

#copy/paste all content of /etc/skel over to home folder - Beware
alias skel='cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S) && cp -rf /etc/skel/* ~'
#backup contents of /etc/skel to hidden backup folder in home/user
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'


#get fastest mirrors in your neighborhood 
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"


#copy bashrc-latest over on bashrc - cb= copy bashrc
alias cb="sudo cp /etc/skel/.bashrc-latest /etc/skel/.bashrc && cp /etc/skel/.bashrc-latest ~/.bashrc && cp /etc/skel/.bashrc-latest ~/.bashrc-latest && source ~/.bashrc"
alias ci="sudo cp /etc/skel/.inputrc-latest /etc/skel/.inputrc && cp /etc/skel/.inputrc-latest ~/.inputrc && cp /etc/skel/.inputrc-latest ~/.inputrc-latest"

#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

#quickly kill conkies
alias kc='killall conky'

#mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

alias gpl="git pull"
alias gcl="git clone"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push -u origin master"
alias gr="git rm"
alias grd="git rm -r"
alias gra="gitremote"
alias gcln="gitclone"

# alias serv="ssh USER@192.168.1.3"
# alias servseed="ssh USER@joker.seedhost.eu"

#hardware info --short
alias hw="hwinfo --short"

alias sZ="source ~/.bashrc"
alias eZ="vim ~/.bashrc"

alias ~="cd ~ && source ~/.bashrc"

alias yt='youtube-dl --recode-video mp4'

#youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "

alias ytv-best="youtube-dl -f bestvideo+bestaudio "

alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
alias scp='sudo cp'
alias scpd='sudo cp -R'

alias slin='sudo ln -s'
alias lin='ln -s'

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -100"

#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#nano
alias nlightdm="sudo vim /etc/lightdm/lightdm.conf"
alias npacman="sudo vim /etc/pacman.conf"
alias ngrub="sudo vim /etc/default/grub"
alias nmkinitcpio="sudo vim /etc/mkinitcpio.conf"
alias nhefflogout="sudo vim /etc/oblogout.conf"

#shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
# shopt -s nocasematch

# nvim related stuff
export VISUAL="nvim"
export EDITOR="nvim"
alias v=nvim
alias vi=nvim
alias vim=nvim
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim

# dotfiles config
alias config='/usr/bin/git --git-dir=/home/slockers37/dotfiles/ --work-tree=/home/slockers37'

# normal zsh aliases
alias clr=clear
alias hfetch=~/.local/bin/hfetch

# (cat ~/.cache/wal/sequences &)
# export _JAVA_AWT_WM_NONREPARENTING=1
clear && hfetch 

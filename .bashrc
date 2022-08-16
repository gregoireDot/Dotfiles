# ~/.bashrc



##############
### BASHRC ###
##############



## PATHS ##
##---------


# Allows doom commands
export PATH=$PATH:~/.emacs.d/bin


## ALIASES ##
#------------


# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls -al --color=auto --block-size=M'
PS1='[\u@\h \W]\$ '

# Alias for snapper and btrfs
alias rootsnap='sudo snapper -c root create --description '
alias homesnap='sudo snapper -c home create --description '
alias showasv=' sudo btrfs subvolume list /'
alias showmsv='findmnt -nt btrfs'
alias drootsnap='sudo snapper -c root delete'
alias dhomesnap='sudo snapper -c home delete'
alias lrootsnap='sudo snapper -c root list'
alias lhomesnap='sudo snapper -c home list'
alias rootsnap='sudo snapper -c root create --description '
alias scrub='sudo btrfs scrub start -Bd /'
alias homesnap='sudo snapper -c home create --description '


#Alias for neovim
alias vim='nvim '

#Alias for directory travel
alias cddown='cd /home/greg/Downloads/ '
alias cdcodes='cd /home/greg/Desktop/Academic/Physics/Masters/Codes '
alias cdnvim='cd .config/nvim'
alias cdmast='cd /home/greg/Desktop/Academic/Physics/Masters/ '

#System maintenance
alias scheck='systemctl --failed'
alias jcheck='journalctl -p 3 -b'



# ~/.bashrc

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
alias snaphelp='echo -e " \n rootsnap <Description> \t Take a snapshot of the root subvolume \n homesnap <Description> \t Take a snapshot of the home subvolume \n showasv \t \t \t Show all subvolumes \n showmsv \t \t \t Show all mounted subvolume \n drootsnap <Number(s)> \t \t Deletes the root snapshot(s) specified \n dhomesnap <Number(s)> \t \t Deletes the home snapshot(s) specified \n lrootsnap \t \t \t Lists all the root snapshots \n lhomesnap \t \t \t Lists all the home snapshots \n scrub \t \t \t \t Scrubs root"'

#Alias for matlab
alias matlab='export GTK_PATH=/usr/lib/gtk-2.0; matlab  \-sd /home/greg/Desktop/Academic/Physics/Masters/Codes/'
alias matlabt='export GTK_PATH=/usr/lib/gtk-2.0; matlab -nodesktop -nosplash'

#Alias for neovim
alias vim='nvim '
alias neo='neovide '

#Alias for travel
alias cddown='cd /home/greg/Downloads/ '
alias cdcodes='cd /home/greg/Desktop/Academic/Physics/Masters/Codes '
alias cdnvim='cd .config/nvim'
alias cdmast='cd /home/greg/Desktop/Academic/Physics/Masters/ '

#System maintenance
alias scheck='systemctl --failed'
alias jcheck='journalctl -p 3 -b'



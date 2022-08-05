if status is-interactive
    # Commands to run in interactive sessions can go here



### BASH CONFIG ###

#Aliases for snapper and btrfs
alias rootsnap="sudo snapper -c root create --description "
alias homesnap="sudo snapper -c home create --description "
alias showasv="sudo btrfs subvolume list /"
alias showmsv="findmnt -nt btrfs"
alias drootsnap="sudo snapper -c root delete"
alias dhomesnap="sudo snapper -c home delete"
alias lrootsnap="sudo snapper -c root list"
alias lhomesnap="sudo snapper -c home list"
alias rootsnap="sudo snapper -c root create --description "
alias scrub="sudo btrfs scrub start -Bd /"
alias homesnap="sudo snapper -c home create --description "
alias snaphelp="echo -e ' \n rootsnap <Description> \t Take a snapshot of the root subvolume \n homesnap <Description> \t Take a snapshot of the home subvolume \n showasv \t \t \t Show all subvolumes \n showmsv \t \t \t Show all mounted subvolume \n drootsnap <Number(s)> \t \t Deletes the root snapshot(s) specified \n dhomesnap <Number(s)> \t \t Deletes the home snapshot(s) specified \n lrootsnap \t \t \t Lists all the root snapshots \n lhomesnap \t \t \t Lists all the home snapshots \n scrub \t \t \t \t Scrubs root'"


#Alias for neovim
alias vim="nvim "
alias neo="neovide"


#Alias for directory travel
alias cddown="cd /home/greg/Downloads/ "
alias cdcodes="cd /home/greg/Desktop/Academic/Physics/Masters/Codes"
alias cdnvim="cd .config/nvim"
alias cdfish="cd .config/fish"
alias cdmast="cd /home/greg/Desktop/Academic/Physics/Masters/ "


#System maintenance
alias scheck="systemctl --failed"
alias jcheck="journalctl -p 3 -b"


### FISH CONFIG ###

#Remove the fish greeting    
    set fish_greeting ""


#Better ls
abbr -a ls "ls -alh --block-size=M "

#Aliases for matlab
abbr -a matlab "export GTK_PATH=/usr/lib/gtk-2.0; matlab -sd /home/greg/Desktop/Academic/Physics/Masters/Codes/" 
abbr -a matlabt "export GTK_PATH=/usr/lib/gtk-2.0; matlab -sd /home/greg/Desktop/Academic/Physics/Masters/Codes/ -nodesktop -nosplash"

#Functions to bring back the use of $ and !!
    function bind_bang
        switch (commandline -t)[-1]
            case "!"
                commandline -t $history[1]; commandline -f repaint
            case "*"
                commandline -i !
        end
    end

    function bind_dollar
        switch (commandline -t)[-1]
            case "!"
                commandline -t ""
                commandline -f history-token-search-backward
            case "*"
                commandline -i '$'
        end
    end

    function fish_user_key_bindings
        bind ! bind_bang
        bind '$' bind_dollar
    end
end
function fish_title
    echo Newton 🐈
end

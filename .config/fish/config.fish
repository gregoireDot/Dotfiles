if status is-interactive
# Commands to run in interactive sessions can go here


###################
### BASH CONFIG ###
###################



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

#Alias for neovim
alias vim="nvim "

#Alias for directory travel
alias cddown="cd /home/greg/Downloads/ "
alias cdcodes="cd /home/greg/Desktop/Academic/Physics/Masters/Codes"
alias cdnvim="cd .config/nvim"
alias cdfish="cd .config/fish"
alias cdmast="cd /home/greg/Desktop/Academic/Physics/Masters/ "

#System maintenance
alias scheck="systemctl --failed"
alias jcheck="journalctl -p 3 -b"



###################
### FISH CONFIG ###
###################



#Customize the fish greeting    
set fish_greeting ""


## ABBREVIATIONS ##
#------------------


#Better ls
abbr -a ls "ls -alh --block-size=M"

#Matlab aliases
abbr -a matlab "export GTK_PATH=/usr/lib/gtk-2.0; matlab -sd /home/greg/Desktop/git_projects/" 
abbr -a matlabt "export GTK_PATH=/usr/lib/gtk-2.0; matlab -sd /home/greg/Desktop/git_projects/  -nodesktop -nosplash"



## FUNCTIONS ##
#--------------

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

# Function to allow usual clear in vterm-emac terminal
if [ "$INSIDE_EMACS" = 'vterm' ]
    function clear
        vterm_printf "51;Evterm-clear-scrollback";
        tput clear;
    end
end



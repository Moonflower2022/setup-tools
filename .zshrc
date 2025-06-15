alias cl=clear
alias mkd=mkdir
alias mk=touch
alias rmd="rm -rf"
alias sudo="sudo "
alias ll="ls -al"

function codefile() {
    local file_path="$1"
    local dir_path=$(dirname "$file_path")
    code -n "$dir_path" && code -r -g "$file_path"
}

function empty_trash() {
        osascript -e 'tell application "Finder" to empty trash'
}

PS1="%m %1~ %# "

export EDITOR=nano # for some reason the default editor for crontab is vim and im scared of vim
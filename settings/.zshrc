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

# Enable colors in terminal
autoload -U colors && colors

# Colorful prompt configuration
PS1="%{$fg_bold[yellow]%}%1~%{$reset_color%} %{$fg_bold[cyan]%}%#%{$reset_color%} "

export EDITOR=nano # for some reason the default editor for crontab is vim and im scared of vim
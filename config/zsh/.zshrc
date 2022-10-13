TERM=xterm-256color
export ZSH="/home/${USER}/.oh-my-zsh"

###############################################################################
#                           Export PATH
###############################################################################

export PATH="$/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/go/bin"




###############################################################################
#                           Export Variables
###############################################################################

export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR=nvim
export VISUAL=nvim
export PAGER=bat
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_TIME=de_DE




###############################################################################
#                           THEME
###############################################################################

ZSH_THEME="spaceship"




###############################################################################
#                             ZSH Plugins
###############################################################################

plugins=(
    composer
    docker
    docker-compose
    web-search
    zsh-autosuggestions
    zsh-syntax-highlighting
)



###############################################################################
#                             Aliases
###############################################################################

alias today='date +"%F %A %R"'
alias bat='batcat'
alias gs="git status"
alias gcp='git-commit-and-push'
alias nah="git reset --hard && git clean -df"
alias wip="git add . && git commit -m 'WIP'"
alias v="nvim"
alias vi="nvim"




###############################################################################
#                               Functions
###############################################################################

git-remote-repo-reset() {
    git checkout --orphan TEMP_BRANCH
    git add -A
    git commit -am ":tada: Initial commit"
    git branch -D main
    git branch -m main
    git push -f origin main
}

git-commit-and-push() {
    git add -A
    git commit -m "$1"
    git push
}




###############################################################################
#                               Load Oh-My-ZSH
###############################################################################

source $ZSH/oh-my-zsh.sh

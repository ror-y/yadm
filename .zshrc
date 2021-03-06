# Prevents warning saying I can't access certain files in zshrc directories
ZSH_DISABLE_COMPFIX="true"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="/Users/rorysmith/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Git Aliases
alias co="git checkout"
alias cop="git checkout -p"
alias ga="git add"
alias gap="git add -p"
alias gc="git commit -m"
alias gg="git log develop --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias ggr="git log --pretty=format:\"%ad %h by %an, %s\" --date=iso | sort -r | less"
alias gp="git pull"
alias gs="git status"
alias gsh="git show"
alias gst="git stash"
alias gu="git push"

# Navigation
alias ..="cd .."
alias chess="cd ~/code/chess"
alias tests="chess && cd client/tests"

# Builds
build() {
  chess;
  client/build/bin/build "$@"
}
alias b="build"
alias bs="build serve"

# Unison
alias u="chess && unison web11"

# Testing
alias localhoststart="tests && npm run start"
alias cyopen="tests && npm run cy:open"

# Virtual Box aliases
alias vgo="vagrant up web11" # starting work day
alias vstop="vagrant halt web11" # ending work day  (vm must be up)
alias vssh="vagrant ssh web11" # need to run a vm command (vm must be up)
alias vstat="vagrant status" # show current machine states
alias vreload="vagrant reload web11" # need to reboot the vm  (vm must be up)
alias vdestroy="vagrant destroy web11" # something went totally bad in the vm need to rebuild it - after running this you will need to run `vagrant up web11`

# VIM
alias o_zsh="nvim ~/.zshrc"
alias o_vim="nvim ~/.config/nvim/init.vim"
# alias o_coc="nvim ~/.coc/ TODO
alias s_zsh="source ~/.zshrc"
alias s_vim="source ~/.config/nvim/init.vim"
alias v="chess && nvim ."

# Fix SSH audit issue
alias sfix="eval \"$(ssh-agent -s)\"; ssh-add -K ~/.ssh/id_ed25519;"

# Yadm
alias ys="yadm status"
alias yd="yadm diff"
alias yl="yadm list -a"
alias ya="yadm add"
alias yp="yadm pull"
alias yc="yadm commit -m"
alias yu="yadm push"

# FSWatch for filesync
alias fsw="fswatch -0 ~/.config/nvim/init.vim ~/.config/alacritty/alacritty.yml ~/.tmux.conf ~/.zshrc | xargs -0 -n 1 bash ~/auto-commit-push.sh"

# Open preset tmux panes for code
alias panes="tmux new-session \; split-window -h \; split-window -v \; split-window -v \; select-layout main-vertical \; select-pane -L \; resize-pane -R 200 \; attach"


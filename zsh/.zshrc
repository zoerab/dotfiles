# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/zee/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="alien/alien"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
	zsh-autosuggestions
	z
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll='ls -alh'
alias top='top'
alias vi='vim'
alias tree='tree -a'
alias extip='curl ipecho.net/plain; echo'
alias intip='ipconfig getifaddr en1'
alias htop='sudo htop'
alias bt='wget http://cachefly.cachefly.net/100mb.test -O /dev/null'
alias 4chan-dl='wget -qe robots=off -rHDi.4cdn.org -nc -nd -ERs.jpg,html --show-progress'
alias file-gitignore="wget -O .gitignore https://gist.githubusercontent.com/zoerab/ac336f006e952c6dbf01/raw/a5043364a4a4a3f0786d9702a3206770161f6fd1/.gitignore"
alias 8888="ping 8.8.8.8"
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias fuck="git reset --hard && git clean -df"
alias gs="git status"
alias gaa="git add ."
alias gc="git commit -m "
alias gp="git push"
alias gl="git log"
alias ghist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias ghistlog="log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m %C(white)- %d%x1b[0m%x20%s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --date=relative"
alias dirs="dirs -v"
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias mkdir='mkdir -p'
alias pbsort='pbpaste | sort | pbcopy'

# Showing weather
weather(){
  curl -4 http://wttr.in/$1 
}

# Auto list files in directory once in it
function chpwd() {
    emulate -L zsh
    ls -alh
}

# Ignoring duplicate commands in history
export HISTCONTROL=ignoredups

# VIM FTW
export EDITOR=/usr/local/bin/vim
export VISUAL=/usr/local/bin/vim


# FZF
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export ALIEN_THEME="gruvbox"
export ALIEN_DATE_TIME_FORMAT=%H:%M:%S # default is %r
export USE_NERD_FONT=1
# source ~/alien/alien.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
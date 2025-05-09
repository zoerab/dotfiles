# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/opt/zeek/bin:$HOME/go/bin:$HOME/.cargo/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="alien/alien"
ZSH_THEME="powerlevel10k/powerlevel10k"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

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
COMPLETION_WAITING_DOTS="true"

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
# HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    nmap
    zsh-autosuggestions
	zsh-syntax-highlighting
	web-search
	z
)

export ZSH_DISABLE_COMPFIX=true

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
. $HOME/.aliases

# Getting xclip/xsel to work
export DISPLAY=:0

# Autoloading SSH-AGENT
if [ ! -S ~/.ssh/ssh_auth_sock  ]; then
	eval "$(ssh-agent)"
      ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

# History size
HISTSIZE=10000
HISTFILE=~/.zsh_history
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Keybindings
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Completion styling (search case-insensitive)
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Nvim FTW
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

# Let shell behave like VI
# set -o vi

# Perl/CPAN stuff
PATH="/home/void/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/void/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/void/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/void/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/void/perl5"; export PERL_MM_OPT;

# MANPAGES
# BAT as manpage reader
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# export MANROFFOPT="-c"

# NVIM as manpage reader
# export MANPAGER='nvim +Man!'
 
# MOST as a manpage reader
# export MANPAGER='/usr/bin/most'

# LESS as a manpage reader with few options
export MANPAGER='less -s -M +Gg'
export LS_OPTS='--color=auto'
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

# ALIEN prompt customization
# export ALIEN_THEME="bnw"
# export ALIEN_SECTION_TIME_FORMAT=%H:%M:%S # default is %r
# export ALIEN_GIT_MOD_SYM=✹
# export USE_NERD_FONT=1

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# FZF
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range=:500 {} || cat {}'"

# Yazi tweaks
# export YAZI_IMG_PREVIEWER=wezterm
export YAZI_IMG_PREVIEWER=ueberzugpp


# BROOT tweaks
#source /home/void/.config/broot/launcher/bash/br

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

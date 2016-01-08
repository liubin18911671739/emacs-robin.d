# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#export zsh_path=$HOME/.oh-my-zsh
#export DOCKER_HOST=tcp://127.0.0.1:4243
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="theunraveler"
#ZSH_THEME="random"
#ZSH_THEME="theunraveler"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(osx fasd colored-man bundler extract ruby python github svn rails gem git-flow git-extras npm nvm node pod git macx z tmuxinator web-search sudo)

# User configuration
#export GIT_SOURCE="/Users/r0b1n/git-source"
#export SCALA_HOME="$GIT_SOURCE/scala-2.11.5"
export PATH="/sbin:/bin:/opt/local/bin:/usr/local/bin:/usr/bin:/usr/sbin:/opt/X11/bin:/usr/local/go/bin:/opt/local/sbin:/Users/r0b1n/Qt5.3.0/5.3/clang_64/bin:/Users/r0b1n/anaconda/bin:."
# export MANPATH="/usr/local/man:$MANPATH"
export RAPIDMINER_HOME="/Users/r0b1n/git-source/rapidminer"
source $ZSH/oh-my-zsh.sh
#source GOPATH=/usr/local/go
# You may need to manually set your language environment
export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home"
export APACHE_SOLR_HOME="/Users/r0b1n/Downloads/solr-5.2.0"
export APACHE_NUTCH_HOME="/Users/r0b1n/Downloads/apache-nutch-1.10"
# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export http_proxy=

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
  export LD_PRELOAD=/usr/lib/libwcwidth-icons.so
# Path to your oh-my-zsh installation.
  export ZSH="/home/bmo/.oh-my-zsh"
  export TERM="rxvt-256color"
# Alias' 

#Setting icons
ZSH_THEME="powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

#Sets the icon for the home directory and unknown drectories. 
POWERLEVEL9K_FOLDER_ICON='\uF07C'
POWERLEVEL9K_HOME_SUB_ICON='~'
POWERLEVEL9K_DIR_PATH_SEPARATOR="\u00BB"
POWERLEVEL9K_DIR_PATH_SEPARATOR='\ue0c7'
POWERLEVEL9K_ETC_ICON='\uf878'
POWERLEVEL9K_LINUX_ICON='\uF303'

POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon
				  #root_indicator
				  context
				  dir
				  vcs)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.utf8

# Setting theme.r.
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

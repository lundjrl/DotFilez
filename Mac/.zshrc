# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#	             __
# _____   ____/ /_
#/_   / / ___/  __ \
# /  /_(___ )  / / /
#/____/____//_/ /_/
#
#List of aliases
alias code="open -a VScode"
alias claer="clear"
alias fork="open -a fork"
alias android-studio="open -a \"Android Studio\""
alias figma="open -a figma"
alias slack="open -a slack"
alias ls="lsd"

export DEFAULT_USER=$USER
export TERM="xterm-256color"
export ZSH="/Users/cmo/.oh-my-zsh"
export PATH="$PATH:/optyarn-[1.15.2]/bin"

#React native path
export PATH="/usr/local/Cellar/node/11.12.0/bin/:$PATH"
export ANDROID_SDK=/Users/$USER/Library/Android/sdk
export PATH=/Users/$USER/Library/Android/sdk/platform-tools:$PATH

# Java path stuff for react-native
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-15.0.2.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

#cocoapods
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# Node version management
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"

#Sets the icon for the home directory and unknown drectories. 
POWERLEVEL9K_FOLDER_ICON="\uf07c"
POWERLEVEL9K_HOME_SUB_ICON="\uf07c"
POWERLEVEL9K_DIR_PATH_SEPARATOR=" > "
POWERLEVEL9K_ETC_ICON="\uf07c"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="cyan"

#Set the background color for specific segments
POWERLEVEL9K_DIR_HOME_BACKGROUND="deeppink1"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='cyan'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='deeppink1'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='deeppink1'

#Last directory 
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders

#VCS segment customization
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='48'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='202'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='229'


POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='yellow'
POWERLEVEL9K_NVM_BACKGROUND="238"
POWERLEVEL9K_NVM_FOREGROUND="red"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="gray"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"

#Execution time
POWERLEVEL9K_TIME_BACKGROUND='255'
POWERLEVEL9K_COMMAND_TIME_FOREGROUND='yellow'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='red'

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon 
				   root_indicator 
				   context 
				   dir
				   lang_segment
				   vcs)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status 
				    background_jobs 
  				    command_execution_time 
				    time )
POWERLEVEL9K_SHOW_CHANGESET=true

HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

# /!\ zsh-syntax-highlighting and then zsh-autosuggestions must be at the end
plugins=(gitfast command-not-found cp dirhistory)

#colored-man, zsh-autosuggestions, zsh-syntax-highlighting
# Runs the shell command
source $ZSH/oh-my-zsh.sh

#location of the zsh highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# sourcing some ruby stuff for changing ruby versions
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

ZSH_HIGHLIGHT_STYLES[alias]='fg=003,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=198,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cmo/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cmo/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cmo/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cmo/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cmo/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cmo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cmo/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cmo/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


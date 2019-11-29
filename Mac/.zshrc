#	       __
# _____   ____/ /_
#/_   / / ___/  __ \
# /  /_(___ )  / / /
#/____/____//_/ /_/
#
#List of aliases
alias chrome="cd /Applications && open Google\ Chrome.app --args "https://github.com/BeeInformedPartnership/bip2" --app "http://localhost:3000/hive-scales-dev#/""
alias eos="ssh lundj@eos05.cis.gvsu.edu"
alias wund="open -a Wunderlist"
alias atom="open -a Atom"
alias zilla="open -a FileZilla"
alias vpn="sudo openconnect --juniper vpn.student.gvsu.edu"
alias code="open -a VScode"
alias messenger="open -a Messenger"
alias claer="clear"

export DEFAULT_USER="bidamin"
export TERM="xterm-256color"
export ZSH="/Users/bidamin/.oh-my-zsh"
export PATH="$PATH:/optyarn-[1.15.2]/bin"
#React native path
export PATH="/usr/local/Cellar/node/11.12.0/bin/:$PATH"
export ANDROID_SDK=/Users/bidamin/Library/Android/sdk
export PATH=/Users/bidamin/Library/Android/sdk/platform-tools:$PATH
#cocoapods
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
#mongodb
export PATH="/usr/local/Cellar/mongodb-community-shell/4.2.0/bin/:$PATH"
ZSH_THEME="powerlevel9k/powerlevel9k"
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

POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="yellow"

POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="green"

POWERLEVEL9K_CUSTOM_JAVA="echo -n '\ue738' Java"
POWERLEVEL9K_CUSTOM_JAVA_FOREGROUND="cyan"
POWERLEVEL9K_CUSTOM_JAVA_BACKGROUND="white"

POWERLEVEL9K_CUSTOM_C="echo -n '\ue738' C"
POWERLEVEL9K_CUSTOM_C_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_C_BACKGROUND="red"

POWERLEVEL9K_CUSTOM_SWIFT="echo -n '\ufbe3' Swift"
POWERLEVEL9K_CUSTOM_SWIFT_FOREGROUND="white"
POWERLEVEL9K_CUSTOM_SWIFT_BACKGROUND="058"

POWERLEVEL9K_CUSTOM_CSS="echo -n '\ue749' CSS"
POWERLEVEL9K_CUSTOM_CSS_FOREGROUND="white"
POWERLEVEL9K_CUSTOM_CSS_BACKGROUND="purple"

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

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

ZSH_HIGHLIGHT_STYLES[alias]='fg=003,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=198,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

prompt_lang_segment () {
    # Looks up the folder path + name
    dir="$( cd "$(dirname "$0")" ; pwd -P )"
    # Checks if it is the desired language/framework folder, in this case, python
    if [[ $dir == *"Python"* ]] ; then
        content="\uf81f Python%f"
       "$1_prompt_segment" "$0" "$2" "blue" "yellow" "$content" "#"
    fi
    if [[ $dir == *"JavaScript"* ]] ; then
        content="\ue781 Javascript%f"
        "$1_prompt_segment" "$0" "$2" "yellow" "black" "$content" "#"
    fi
    if [[ $dir == *"C"* ]] ; then
	content="\ue61e C%f"
	"$1_prompt_segment" "$0" "$2" "red" "black" "$content" "#"
    fi
    if [[ $dir == *"Java_code"* ]] ; then
        content="\ue738 Java%f"
        "$1_prompt_segment" "$0" "$2" "white" "cyan" "$content" "#"
    fi
    if [[ $dir == *"HTML"* ]] ; then
        content="\ue60e HTML %f"
        "$1_prompt_segment" "$0" "$2" "white" "purple" "$content" "#"
    fi
    if [[ $dir == *"Mobile"* ]] ; then
        content="\ufbe3  Mobile \ue70e%f"
        "$1_prompt_segment" "$0" "$2" "green" "white" "$content" "#"
    fi
    if [[ $dir == *"Rust"* ]] ; then
	content="\ue7a8 Rust "
	"$1_prompt_segment" "$0" "$2" "black" "208" "$content" "#"
    fi
}

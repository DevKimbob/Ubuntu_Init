export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
        git
        zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# typewritten settings
export TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
# export TYPEWRITTEN_PROMPT_LAYOUT="pure_verbose"
export TYPEWRITTEN_RELATIVE_PATH="adaptive"
# export TYPEWRITTEN_RELATIVE_PATH="home"
export TYPEWRITTEN_CURSOR="block"
export TYPEWRITTEN_COLOR_MAPPINGS="primary:#ab76cc;secondary:#ab76cc;accent:#ab76cc;info_neutral_1:#ab76cc;notice:#ab76cc"

# Set typewritten ZSH as a prompt
autoload -U promptinit; promptinit
prompt typewritten
# add devbox bits to zsh
fpath+=($DEVBOX_GLOBAL_PREFIX/share/zsh/site-functions $DEVBOX_GLOBAL_PREFIX/share/zsh/$ZSH_VERSION/functions $DEVBOX_GLOBAL_PREFIX/share/zsh/vendor-completions)
autoload -U compinit && compinit

# initialize apps
# starship
#eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# direnv
eval "$(direnv hook zsh)"
# atuin - history search
# eval "$(atuin init zsh)"

# export ZSH=$DEVBOX_GLOBAL_PREFIX/share/oh-my-zsh
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

ZSH_THEME="robbyrussell"

plugins=(
	git
	golang
	gh
	kube-ps1
	kubectl
	z
	zsh-navigation-tools
)

source $DEVBOX_GLOBAL_PREFIX/share/oh-my-zsh/oh-my-zsh.sh

source $DEVBOX_GLOBAL_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $DEVBOX_GLOBAL_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


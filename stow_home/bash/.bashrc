# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

export EDITOR=nvim
export VISUAL=nvim

eval "$(starship init bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOTFILES=$HOME/.dotfiles

export PATH="$HOME/.adr-tools/src:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

{ alias air="$(go env GOPATH)/bin/air"; } 2>/dev/null

export JAVA_HOME=/usr/local/android-studio/jbr 2> /dev/null
export ANDROID_HOME="$HOME/Android/Sdk" 2> /dev/null
export NDK_HOME="$ANDROID_HOME/ndk/26.2.11394342" 2> /dev/null

[ -f ~/.config/fzf/config.sh ] && source ~/.config/fzf/config.sh

source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
  zplug install
fi

# Then, source plugins and add commands to $PATH
zplug load

# # zplug check returns true if the given repository exists
# if zplug check b4b4r07/enhancd; then
#     # setting if enhancd is available
#     export ENHANCD_FILTER=fzf-tmux
# fi

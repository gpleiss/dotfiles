# .bash_profile
#
# This file should only be used if we can't run `chsh -s $(which zsh)` on our account
# (e.g. if we are on a cluster) and bash is the default shell
# It essentially starts up zsh
#
export SHELL=/bin/zsh
[ -z "$ZSH_VERSION" ] && exec /bin/zsh -l

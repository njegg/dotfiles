if status is-interactive
    set -gx EDITOR nvim
    set -gx TERMINAL kitty
    # set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

    set -gx ANDROID_HOME $HOME/android/sdk
    set -gx JAVA_HOME /usr/lib/jvm/default/

    set -gx FD_DIRS ~/\
                ~/code \
                ~/Documents \
                ~/dotfiles

    set -gx real_red "\033[38;2;255;0;0m"

    set fish_greeting

    set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/nj/.ghcup/bin # ghcup-env⏎  

    set -gx FZF_DEFAULT_COMMAND "find -L"

    alias l='eza -H -l --git -all --group-directories-first'
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# source /opt/asdf-vm/asdf.fish

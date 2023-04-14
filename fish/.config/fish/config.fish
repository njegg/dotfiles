if status is-interactive
    set -gx EDITOR nvim
    set -gx TERMINAL kitty
    set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

    set -gx real_red "\033[38;2;255;0;0m"

    set fish_greeting

    set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/nj/.ghcup/bin # ghcup-env⏎  

    set -gx FZF_DEFAULT_COMMAND "find -L"
end

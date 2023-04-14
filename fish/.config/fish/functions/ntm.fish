function ntm --wraps='~/.config/tmux/tmux.conf' --wraps='nvim ~/.config/tmux/tmux.conf' --description 'alias ntm=nvim ~/.config/tmux/tmux.conf'
  nvim ~/.config/tmux/tmux.conf $argv; 
end

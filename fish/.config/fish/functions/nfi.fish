function nfi --wraps='nvim .config/fish/config.fish' --description 'alias nfi=nvim .config/fish/config.fish'
  nvim ~/.config/fish/config.fish $argv; 
end

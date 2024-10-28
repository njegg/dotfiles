function n --wraps=nvim --description 'alias n=nvim'
  zellij action switch-mode Locked
  nvim $argv; 
end

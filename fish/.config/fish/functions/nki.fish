function nki --wraps='nvim /home/nj/.config/kitty/kitty.conf' --description 'alias nki=nvim /home/nj/.config/kitty/kitty.conf'
  cd  /home/nj/.config/kitty && nvim /home/nj/.config/kitty/kitty.conf $argv; 
end

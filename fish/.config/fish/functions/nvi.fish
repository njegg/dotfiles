function nvi --wraps='nvim /home/nj/.config/nvim/init.vim' --description 'alias nvi=nvim /home/nj/.config/nvim/init.vim'
  cd /home/nj/.config/nvim && nvim /home/nj/.config/nvim/ $argv; 
end

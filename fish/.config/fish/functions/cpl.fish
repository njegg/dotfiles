function cpl --wraps='history | head -1 | xclip' --description 'alias cpl=history | head -1 | xclip'
  history | head -1 | xclip $argv
        
end

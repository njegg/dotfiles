function gc --wraps='git commit -a' --description 'alias gc=git commit -a'
  git commit -a $argv
        
end

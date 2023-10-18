function z --wraps='nohup zathura' --description 'alias z=nohup zathura'
  nohup zathura $argv > /dev/null 2>&1 &
end

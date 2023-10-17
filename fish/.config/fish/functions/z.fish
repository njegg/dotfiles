function z --wraps=zathura --wraps='nohup zathura ' --wraps='nohup zathura $argv > /dev/null 2>&1 &' --description 'nohup zathura $argv > /dev/null 2>&1 &'
  nohup zathura $argv > /dev/null 2>&1 &
end

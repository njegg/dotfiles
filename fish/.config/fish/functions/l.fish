function l --wraps='ls -alh' --wraps='eza -H -l --git -all --group-directories-first' --description 'alias l=eza -H -l --git -all --group-directories-first'
  eza -H -l --git -all --group-directories-first $argv
end

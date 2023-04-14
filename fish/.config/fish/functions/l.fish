function l --wraps='exa -H -l --git -all --group-directories-first' --description 'alias l=exa -H -l --git -all --group-directories-first'
  exa -H -l --git -all --group-directories-first $argv; 
end

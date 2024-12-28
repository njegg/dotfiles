function shc --wraps=printf\ \"\\033\[\?25h\" --description alias\ shc=printf\ \"\\033\[\?25h\"
  printf "\033[?25h" $argv
        
end

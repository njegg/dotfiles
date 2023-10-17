function ngrok8080 --wraps='ngrok http --domain=renewed-namely-monkey.ngrok-free.app 8080' --description 'alias ngrok8080=ngrok http --domain=renewed-namely-monkey.ngrok-free.app 8080'
  ngrok http --domain=renewed-namely-monkey.ngrok-free.app 8080 $argv
        
end

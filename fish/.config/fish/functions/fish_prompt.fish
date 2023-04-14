function fish_prompt
  printf "$real_red"
  echo -n [
  set_color normal; echo -n nj
  set_color yellow; echo -n '@'
  set_color normal; echo -n $hostname
  printf "$real_red] "
  echo -n (prompt_pwd)
  set_color white
  echo -n (fish_git_prompt)
  set_color normal 
  echo -n " "
  
  set_color white;
end

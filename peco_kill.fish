function peco_kill
  ps ax -o pid,time,command | peco --query "$LBUFFER" | awk '{print $1}' | read pid
  commandline "kill $pid"
end


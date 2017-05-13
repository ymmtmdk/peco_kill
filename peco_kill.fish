function peco_kill
  set -l flags --layout bottom-up
  if test -n $argv
    set flags --query "$argv" $flags
  end

  ps ax -o pid,time,command | peco $flags | awk '{print $1}' | read pid
  commandline "kill $pid"
end


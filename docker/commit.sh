num=$(($1+1))
CMD_COMMIT="docker commit -m '$2' welcome_the_lion_on_your_path_$1  jhegedus42/welcome_the_lion_on_your_path:000$num"
echo $CMD_COMMIT

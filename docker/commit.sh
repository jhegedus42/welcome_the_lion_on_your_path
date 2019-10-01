num=$(($1+1))
cont="jhegedus42/welcome_the_lion_on_your_path_000$1"
CMD_COMMIT="docker commit -m '$2' $cont  jhegedus42/welcome_the_lion_on_your_path:00$num"
echo $CMD_COMMIT
# $CMD_COMMIT
# docker rm $cont

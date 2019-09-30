#docker ps -a
# docker commit -m 'installed firefox' docker_playaround_0014 jhegedus42/docker-playaround:0015
num=$(($1+1))
CMD_COMMIT="docker commit welcome_the_lion_on_your_path_$1  jhegedus42/welcome_the_lion_on_your_path:$num"
echo CMD_COMMIT

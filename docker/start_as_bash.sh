IMAGE_NAME='welcome_the_lion_on_your_path'
echo 'parameter fed to the script:'
echo $1
echo 'image name:'
echo $IMAGE_NAME
echo 'container name:'
CTR_NAME="$IMAGE_NAME"_"$1"
echo $CTR_NAME

CMD_TO_START_DOCKER="docker run -p 5902:5902 -p 5901:5901 -p 5900:5900 -p 9000:8888 -e GRANT_SUDO=yes -v /tmp:/tmp_of_host --user joco -it --name $CTR_NAME jhegedus42/$IMAGE_NAME:$1  bash"

echo 'command that will start the docker container:'
echo $CMD_TO_START_DOCKER
#$CMD_TO_START_DOCKER

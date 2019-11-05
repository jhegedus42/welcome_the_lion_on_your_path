./print_docker_images.sh


nice_date_format="+%Y_%m_%d_%H_%M"
timestamp=$(date "$nice_date_format")
contNum=$1
num=$(($contNum+1))
cont="welcome_the_lion_on_your_path_0010_flattened_000$contNum"


CMD_COMMIT="docker commit -m '$timestamp' $cont  jhegedus42/welcome_the_lion_on_your_path_0010_flattened:000$num"


echo $CMD_COMMIT

$CMD_COMMIT

./print_docker_images.sh

docker ps -a

docker rm $cont

docker ps -a

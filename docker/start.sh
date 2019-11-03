version=`docker images |head -n 2 | tail -n 1| awk '{print $2}'`
echo $version
start_command="docker run  -p 5902:5902  -p 5901:5901  -p 5900:5900  -p 9000:8888  -p 8022:22  -e GRANT_SUDO=yes  -v /tmp:/tmp_of_host  --user joco  -it  --name welcome_the_lion_on_your_path_$version  jhegedus42/welcome_the_lion_on_your_path:$version  bash "
echo $start_command
$start_command

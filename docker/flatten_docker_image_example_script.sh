# taken from https://tuhrig.de/flatten-a-docker-container-or-image/
# docker export docker_playaround_0014 > export.tar # <== export 
# cat /home/export.tar | docker import - some-name:latest # <== import (flattened)
# in my case this was :
# cat export.tar | docker import - welcome_the_lion_on_your_path:0001


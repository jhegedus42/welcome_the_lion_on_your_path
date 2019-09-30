docker ps -a | head -n 2 | tail -n 1| awk '{print "name :   " $1, "       tag :   " $2}'

# $1 number of instances
instances="$1"

for i in `seq 1 to $instances`
do
  docker-machine create -d "virtualbox" node-$i
done

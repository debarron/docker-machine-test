
active_machines=$(docker-machine ls | tail -n+2 | cut -d' ' -f1)
active_machines_count=$(echo $active_machines_count | wc -l)

if [[ "$active_machines_count" -eq 0 ]]
then
  exit 0
fi

for machine_name in $(echo "$active_machines")
do
  docker-machine rm -y "$machine_name"
done



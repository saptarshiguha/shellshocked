cd ~/
IS_MASTER=false
if [ -f /mnt/var/lib/info/instance.json ]
then
	IS_MASTER=$(jq .isMaster /mnt/var/lib/info/instance.json)
fi
if $IS_MASTER; then
  ## only runs on master
  git clone https://github.com/saptarshiguha/terrific  
fi

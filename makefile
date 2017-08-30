jolla_wired = 192.168.2.15 
remote_path = "/home/nemo/Music/music"

wire_connect:
									ifconfig enp0s20u2 inet 192.168.2.14

wire_sync:
									rsync -zarv -e "ssh" --include "*/" --include "*.ogg" --include "*.mp3" --exclude "*"  . nemo@${jolla}:${remote_path}/

jolla_wired = "192.168.2.15" 
remote_path = "/home/nemo/Music/music"

wire_connect:
									#ifconfig enp0s20u2 inet 192.168.2.14
									ifconfig usb0 inet 192.168.2.14

wire_sync:
									rsync -zarv -e "ssh" --include "*/" --include "*.ogg" --include "*.mp3" --exclude "*"  . nemo@192.168.2.15:$(remote_path)/
									#rsync -aPv -e "ssh" */*.ogg nemo@$(jolla_wired):$(remote_path)/
									#rsync -aPv -e "ssh" */*.mp3 nemo@$(jolla_wired):$(remote_path)/

#modprobe rndis_host
#modprobe cdc_ether
#modprobe usb_f_rndis
jolla_wired = "192.168.2.15" 
remote_path = "/home/nemo/Music/music"

wire_connect:
									#ifconfig enp0s20u2 inet 192.168.2.14
									ifconfig usb0 inet 192.168.2.14

wire_mount:
									sshfs nemo@192.168.2.15:/media/sdcard/b5be253e-a1de-44b8-bc87-e8b96484b5e0 /home/noch/jolla

wire_sync:
									rsync -zarv -e "ssh" --include "*/" --include "*.ogg" --include "*.mp3" --exclude "*"  . nemo@192.168.2.15:$(remote_path)/
									#rsync -aPv -e "ssh" */*.ogg nemo@$(jolla_wired):$(remote_path)/
									#rsync -aPv -e "ssh" */*.mp3 nemo@$(jolla_wired):$(remote_path)/

list   = "list.txt"
jolla  = "10.23.23.5"
curDir = $(shell pwd)
basNam = $(shell basename `pwd`)
remote_path = "/home/nemo/Music/music_videos"

all:

mp3:
		@while read -r line; do \
			echo "$$line"; \
			youtube-dl -x -k --audio-format=mp3 --audio-quality=0 $$line ; \
		done < ${list}

vorbis:
		@while read -r line; do \
			echo "$$line"; \
			youtube-dl -x -k --audio-format=vorbis --audio-quality=0 $$line ; \
		done < ${list}

sync_mp3:
		rsync -aPv -e "ssh" *.mp3 nemo@${jolla}:${remote_path}/music_videos/${basNam}/

sync_ogg:
		rsync -aPv -e "ssh" *.ogg nemo@${jolla}:${remote_path}/music_videos/${basNam}/



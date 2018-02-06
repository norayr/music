list   = "list.txt"
jolla  = "10.23.23.5"
curDir = $(shell pwd)
basNam = $(shell basename `pwd`)
remote_path = "/home/nemo/Music/music"

all:

tag_all_oggs:
		/bin/bash tag.sh ogg

tag_all_mp3s:
		/bin/bash tag.sh mp3

mp3:
		@while read -r line; do \
			echo "$$line"; \
			youtube-dl -x --audio-format=mp3 --audio-quality=0 $$line ; \
		done < ${list}
		make tag_all_mp3s

vorbis:
		@while read -r line; do \
			echo "$$line"; \
			youtube-dl -x --audio-format=vorbis --audio-quality=0 $$line ; \
		done < ${list}
		make tag_all_oggs

sync_mp3:
		rsync -aPv -e "ssh" *.mp3 nemo@${jolla}:${remote_path}/${basNam}/

sync_ogg:
		rsync -aPv -e "ssh" *.ogg nemo@${jolla}:${remote_path}/${basNam}/

clean:
		rm *.webm *.mp4 *.m4a *.mkv

LIST = "list.txt"


all:

mp3:
		@while read -r line; do \
			echo "$$line"; \
			youtube-dl -x -k --audio-format=mp3 --audio-quality=0 ${line} ; \
		done < ${LIST}

ogg:
		@while read -r line; do \
			echo "$$line"; \
			youtube-dl -x -k --audio-format=ogg --audio-quality=0 ${line} ; \
		done < ${LIST}

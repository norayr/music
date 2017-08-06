
TAGGER=id3v2
YDL=youtube-dl
LST=list.txt
# check for prerequisites
command -v $TAGGER >/dev/null 2>&1 || { echo "$TAGGER it's not installed.  Aborting." >&2; exit 1; }

command -v $YDL >/dev/null 2>&1 || { echo "$YDL it's not installed.  Aborting." >&2; exit 1; }

BAK_IFS=$IFS

IFS=$'\t'

while read LINK GROUP SONG
do
  #echo "$LINK $GROUP $SONG"
  echo "$GROUP"
done < list.txt

IFS=$BAK_IFS


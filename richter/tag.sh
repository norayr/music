
set -x

#first parameter - files extention to tag.

if [ $# -eq 0 ]
then
  echo "no arguments supplied, using ogg"
  ext="ogg"
else
  ext=$1
  echo "will tag .$ext files" 
fi

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for i in *.$ext
do
  echo $i
  j=${i%.}
  k=${j%-}
  id3tool -t "$k" -a "$k" -r "Max Richter" $i
done

IFS=$SAVEIFS

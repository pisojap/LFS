
echo "ERROR DOWNLOAD FAILED ON FOLLOWING FILES!" > downloaderror.log

cat wget-list | while read line; do
	NAME="$(basename "$line")"
	
	if [ ! -f $NAME ]; then
		wget $line 2>>downloaderror.log
	fi	
done

cat downloaderror.log

md5sum -c md5sums


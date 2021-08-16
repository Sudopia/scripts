#Designed to be able to bulk unzip files to directories with the same name as given zipped filename - minus the filetype extension.
#I believe there are other zip/grep packages which allow either searching or setting target directory to match filename
#but as far as I could tell, none of those packages are available for Ubuntu on WSL (windows subsystem for linux).
#Maybe I could have added a non mainline package repository or PPA but I didn't look into any of that.

#Instructions for use: replace any occurences of .xpi with the filename extensiun of your choice: 

for i in *.xpi
do
	#strip path from filename then give argument to subtract filename extension and return the basename
	x=$(basename "$i" .xpi)
	unzip $i -d $x
done



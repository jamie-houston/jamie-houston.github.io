# Run commands in adb
# p - paste (clipboard)
# t - tab
# e - enter
# anything else, enters text
# example >adbp hello t how are you e -> "hello <tab> how are you <enter>"
function adbp() {
    # if they don't pass anything, just paste the clipboard
	if [ $# -eq 0 ]
	then
        adb shell input keyevent 279
    else
        for p in $*
			do
        	    case $p in
            	    p)
						adb shell input keyevent 279
						;;
	                t)
    	                adb shell input keyevent 61
						;;
            	    e)
                	    adb shell input keyevent 66
						;;
	                *)
    	                adb shell input text $p
						;;
            	esac
        	done
    fi
}

# delete all branches merged into main
gclean() {
  echo "=== Deleting all merged branches ==="
  git remote prune origin
  git checkout main && git branch --merged | egrep -v "(^\*|main)" | xargs git branch -d
  echo "☑️ Done!"
}

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
    git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -df $1
    echo "☑️ Done!"
}

# Get the size of gradle caches, wrappers and daemons in human readable format
# Depends on: du, awk
# Use as: gradleCacheWrapperDaemonsSize
function gradleCacheWrapperDaemonsSize(){
    DIR_TO_CHECK=("caches"  "wrapper"  "daemon")
    for dir in ${DIR_TO_CHECK[*]}; do
        printf "  👉 ~/.gradle/$dir: $(du -sh ~/.gradle/$dir | awk '{ print $1 }')\n"        
    done
}

# Clean up the gradle caches, wrappers and daemons directory of files 
# that were accessed more than 30 days ago and remove empty directories
# Found here: https://crushingcode.nisrulz.com/posts/reducing-mammoth-gradle-caches/
# Depends on: gradleCacheWrapperDaemonsSize
# Use as: gradleClean
function gradleClean(){
    echo " [BEFORE Cleanup] Gradle caches size:"
    gradleCacheWrapperDaemonsSize
    echo "=========================================================="
    echo " Cleaning up gradle directories ..."
    echo " "
    echo " Working in:"
    DIR_TO_CHECK=("caches"  "wrapper"  "daemon")
    for dir in ${DIR_TO_CHECK[*]}; do
        echo " 👉 ~/.gradle/$dir"
        # Delete all files accessed 30 days ago
        find ~/.gradle/$dir -type f -atime +30 -delete
        # Delete empty directories
        find ~/.gradle/$dir -mindepth 1 -type d -empty -delete
    done
    echo "=========================================================="
    echo " [AFTER Cleanup] Gradle caches size:"
    gradleCacheWrapperDaemonsSize
    echo "=========================================================="
    echo " Done ✅"
}

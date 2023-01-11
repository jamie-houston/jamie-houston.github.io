# Run commands in adb
# p - paste (clipboard)
# t - tab
# e - enter
# anything else, enters text
# example >adbp hello t how are you e -> "hello <tab> how are you <enter>"
function adbp --description 'Shortcut to type into adb'
    # if they don't pass anything, just paste the clipboard
    if test (count $argv) -eq 0
        adb shell input keyevent 279
    else
        set path_parts (string split " " $argv)


        for p in $path_parts
            switch $p
                case p
                    adb shell input keyevent 279
                case t
                    adb shell input keyevent 61
                case e
                    adb shell input keyevent 66
                case '*'
                    adb shell input text $p
            end

        end
    end
end

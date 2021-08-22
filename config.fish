# Move this to ~/.config/fish/config.fish
alias "gs"="git status"
alias "gl"="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias "gcl"="git checkout -"
alias "gml"="git merge -"
alias "gsu"="git submodule update --init --recursive"
alias "gd"="git diff"
alias "gfa"="git fetch --all"

# https://geoff.greer.fm/lscolors/
set -gx LSCOLORS EHfxcxdxBxegecabagacad

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function ls --description 'List contents of directory'
  command ls -laFG $argv
end

# to run code from command prompt, run "Shell Command: Install 'code' in command path" in VSCode
function code --description 'Launches visual code studio in a new window'
  command code -n $argv
end

function gclean --description 'Delete all local branches that is already merged to current branch (exludes master)'
  command git remote prune origin
  command git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -n 1 git branch -df
end

function cm --description 'git commit with message'
  git commit -am "$argv"
end

function mkcd --description 'Make directory and cd into it'
    mkdir -pv $argv;
    cd $argv;
end

function adbp --description 'Paste clipboard into emulator'
    command adb shell input keyevent 279
end

function grep --description 'Colorful grep that ignores binary file and outputs line number'
  command grep --color=always -I $argv
end

# Java
set -gx JAVA_HOME (/usr/libexec/java_home -v11)

# Allow 256 colors in iTerm2 for pretty vim colors
set -gx CLICOLOR 1
set -gx TERM xterm-256color

thefuck --alias | source

# shortcuts
set -gx PATH $PATH /usr/local/bin
set -gx ANDROID_SDK_ROOT ~/Library/android/sdk
set -gx PATH $PATH "$ANDROID_SDK_ROOT/platform-tools"
set -gx PATH $PATH "$ANDROID_SDK_ROOT/emulator"

source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

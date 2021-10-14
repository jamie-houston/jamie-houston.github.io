if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Git Function

function gcl
  command git checkout -
end

function gd
  command git diff --ignore-all-space
end

function gfa
  command git fetch --all
end

function gml
  command git merge -
end

function gl
  command git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
end

function gp
  command git pull
end

function gs --description 'git status'
  command git status
end

function gsu
  command git submodule update --init --recursive
end

function gclean --description 'Delete all local branches that is already merged to current branch (exludes master)'
  command git remote prune origin
  command git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -n 1 git branch -df
end

function cm --description 'git commit with message'
  git commit -am "$argv"
end

function ls --description 'List contents of directory'
  command ls -laFG $argv
end

# to run code from command prompt, run "Shell Command: Install 'code' in command path" in VSCode
function code --description 'Launches visual code studio in a new window'
  command code -n $argv
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

function iosi --description 'Update ios repo depdendencies'
  command bundle install && bundle exec pod repo update && bundle exec pod install
end

# https://geoff.greer.fm/lscolors/
set -gx LSCOLORS EHfxcxdxBxegecabagacad

# Java
set -gx JAVA_HOME (/usr/libexec/java_home -v11)

# Allow 256 colors in iTerm2 for pretty vim colors
set -gx CLICOLOR 1
set -gx TERM xterm-256color

set -gx ANDROID_HOME ~/Library/Android/sdk
thefuck --alias | source

source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

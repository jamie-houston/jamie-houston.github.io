# Move this to ~/.config/fish/config.fish
alias "gs"="git status"
alias "gl"="git log"
alias "gcl"="git checkout -"
alias "gml"="git merge -"
alias "poo"="start *.sln"
alias "gsu"="git submodule update --init --recursive"
alias "gd"="git diff"
alias "gmum"="git merge upstream/master"
alias "gmud"="git merge upstream/dev"
alias "gfa"="git fetch --all"
alias "grpo"="git remote prune origin"
alias "shazaam"="find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;"

# nice light cyan color instead of dark blue
set -gx LSCOLORS gxfxcxdxbxegedabagacad

function ls --description 'List contents of directory'
  command ls -lFG $argv
end

function code --description 'Launches visual code studio in a new window'
  command code -n $argv
end

function grep --description 'Colorful grep that ignores binary file and outputs line number'
  command grep --color=always -I $argv
end

function gf --description 'Do a git fetch'
  command git fetch
end

function gclean --description 'Delete all local branches that is already merged to current branch (exludes master)'
  command git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -n 1 git branch -df
  command git remote prune origin
end

# . $HOME/.config/fish/prompt.fish

# Java
# set -gx JAVA_HOME (/usr/libexec/java_home)
set -gx JAVA_HOME (/usr/libexec/java_home -v 11)
set -gx PATH $PATH ~/Library/kotlin-native/bin

# Allow 256 colors in iTerm2 for pretty vim colors
set -gx CLICOLOR 1
set -gx TERM xterm-256color
set -gx ANDROID_SDK_ROOT ~/Library/android/sdk

# rbenv
status --is-interactive; and source (rbenv init -|psub)
thefuck --alias | source
# eval (python -m virtualfish)

function ass --description 'Open project in android studio'
  command open -a /Applications/Android\ Studio.app ./
end

# chrome d8
#alias "d8"="~/src/sf/j2v8/v8/repo/out.gn/x64.optdebug/d8"
alias "tick-processor"="~/src/sf/j2v8/v8/repo/tools/mac-tick-processor"
set -gx D8_PATH ~/src/sf/j2v8/v8/repo/out.gn/x64.optdebug

# shortcuts
set -gx PATH $PATH /usr/local/bin
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

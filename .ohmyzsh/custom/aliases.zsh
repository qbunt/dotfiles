alias zshconfig="code ~/.zshrc"
alias hyperconfig="$EDITOR ~/.hyper.js"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias notes="$EDITOR ~/Dropbox/Apps/Notational\ Data"
alias notesFile="~/Dropbox/Apps/Notational\ Data"
alias ll="exa -lghuU --git"
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias extip="dig +short myip.opendns.com @resolver1.opendns.com"
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias reload="zsh --login"
alias reload!='. ~/.zshrc'
alias rollmac="sudo openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | xargs"
alias cls='clear' # obvsly
alias dnuke='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'
alias rpi_ip="arp -a | grep b8:27:eb | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'"
alias purgedns="sudo killall -HUP mDNSResponder && sudo killall mDNSResponderHelper && sudo dscacheutil -flushcache"

alias chrome="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"

# the remy sharp additions https://remysharp.com/2018/08/23/cli-improved
alias cat='bat'
alias ping='prettyping --nolegend'
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
alias top="sudo htop" # alias top and fix high sierra bug
alias help='tldr'

# Fix carriage line issues before nuking git
alias fixlines="find ./ -type f -exec perl -pi -e 's/\r\n|\n|\r/\n/g' {} \;"
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias hurlp='pbpaste | jq ".log.entries" | tee >(jq --raw-output "[.[] | .request.url] | sort | unique | .[]")'
alias hurld='pbpaste | jq ".log.entries" | jq --raw-output "[.[] | .request.url] | sort | unique | .[]" | harurls | tee >(xargs -n 1 curl -O $1)'

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

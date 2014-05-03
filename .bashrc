# Aliases
alias ll="ls -l"
alias la="ls -al"
alias lt="ls -lt"
alias l="ls"

# Keeps ~/.bash_history file unbounded
export HISTSIZE=""
export HISTFILESIZE=""

# Custom Commands
# * Opens a SOCKS proxy to 🏠 on localhost:4444
alias proxytnnl="ssh -p24747 -D4444 chris@tnnl.in"
# * hostname/ip lookup functions
function ip2hostname () { nslookup "$1" | grep name | sed 's/.*name\ =\ \(.*\)./\1/'; }
function hostname2ip () { nslookup "$1" | grep 'Address: [0-9]' | sed 's/Address: //'; }

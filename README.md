dotfiles
========

.vimrc, .bashrc, .psqlrc, etc.

I've decided to share my env rc files. Cleaning them up has been a great excersize in learning how they work. Rather than publishing _copypasta_, I've been forcing myself to understand each line. It's also gotten me to go look up or derive fixes for things I've been bothered by for a while. So, enjoy!

examples
--------

__bashrc__

One of my favorite customizations so far, has been session independent bash history files:

The first command switches editing mode to 'append' for the history file. The second command causes the history file to be written to and then the buffer to be cleared and reloaded upon each issue of a command.

    shopt -s histappend
    export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

Test it out by opening 2 terminal tabs; alternating between them run: `echo one` `echo two` `echo three` `history 10`

__psqlrc__

Another tweak, for the postgres client, is seperate history files per connection:

    \set HISTFILE ~/.psql_history- :HOST - :DBNAME

This command produces history files like:

    .psql_history-localhost-testdb

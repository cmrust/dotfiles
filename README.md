dotfiles
========

.vimrc, .bashrc, .psqlrc, etc.

I've decided to start sharing my env rc files, as many others do on GitHub. In the process of cleaning them up for presentation I have learned a lot more about how they work.

examples
--------

One of my favorite customizations so far, has been session independent bash history files:

The first command switches editing mode to 'append' for the history file. The second command causes the history file to be written to and then the buffer to be cleared and reloaded upon each issue of a command.

    shopt -s histappend
    export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

Test it out by opening 2 terminal tabs; alternating between them run: `echo one` `echo two` `echo three` `history 10`

Another tweak, for the postgres client, is seperate history files per connection:

    \set HISTFILE ~/.psql_history- :HOST - :DBNAME

This command produces files like:

    .psql_history-localhost-testdb

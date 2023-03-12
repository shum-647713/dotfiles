PROMPT_DIRTRIM='2'
PROMPT_COMMAND='RET=$?;'
PROMPT_COMMAND+='history -a;'
PROMPT_COMMAND+='history -r;'

PS1_UH='\[\e[32m\]\u@\h '
PS1_WD='\[\e[34m\]\w '
PS1_GB='$(GBN=$(git branch --show-current 2> /dev/null) && echo "\[\e[35m\]$GBN ")'
PS1_BJ='$(test \j -ne 0 && echo "\[\e[36m\]\j ")'
PS1_RC='$(test $RET -ne 0 && echo "\[\e[31m\]$RET ")'
PS1_ID='\[\e[0m\]\$ '
PS1="$PS1_UH$PS1_WD$PS1_GB$PS1_BJ$PS1_RC$PS1_ID"
unset PS1_UH PS1_WD PS1_GB PS1_BJ PS1_RC PS1_ID

alias grep='grep --color=auto'
alias ls='ls --color=auto'

HISTCONTROL='ignoreboth:erasedups'
HISTIGNORE='ll:la:lt'

alias ll='ls -l'
alias la='ll -A'
alias lt='ll -tr'
alias rf='rm -rf'

used() { history | grep "$*"; }

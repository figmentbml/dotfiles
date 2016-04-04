# Setting the path for mysql
PATH="/usr/local/bin/mysql:${PATH}"
export PATH

function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}

export PS1='\h:\[\e[32m\]\w\e[0m\] \u \e[0;31m\]$(parse_git_branch)\e[0m\] \n \t $ '

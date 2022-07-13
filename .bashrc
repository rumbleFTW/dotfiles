#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

alias ls='ls --color=auto'

function parseGitBranch
{
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "*<${ref#refs/heads/}>"
}

function parseCondaEnv
{
    if [[ ! -z $CONDA_DEFAULT_ENV ]]; then
        echo "~{$CONDA_DEFAULT_ENV}";
    fi
}

PS1='╭──(\[\e[1;34m\]\u\[\e[00m\]@\[\e[1;33m\]\h\[\e[00m\])→[\[\e[1;32m\]\W\[\e[0m\]%\[\e[0;32m\]$(ls | wc -l)F\[\e[00m\]]\[\e[1;35m\]$(parseCondaEnv)\[\e[00m\]\[\e[1;31m\]$(parseGitBranch)\[\e[00m\]\n╰─$ '

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


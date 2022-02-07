#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=/home/yuanhao/.local/bin:${PATH}

export JAVA_HOME=/usr/lib/jvm/default

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yuanhao/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yuanhao/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yuanhao/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/yuanhao/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# add cuda tools to command path
# export PATH=/opt/cuda/bin:${PATH}

# add cuda libraries to library path
if [[ "${LD_LIBRARY_PATH}" != "" ]]
then
  export LD_LIBRARY_PATH=/opt/cuda/lib64:${LD_LIBRARY_PATH}
else
  export LD_LIBRARY_PATH=/opt/cuda/lib64
fi

# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/extras/CUPTI/lib64

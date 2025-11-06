export EDITOR="nvim"
export SUDO_EDITOR=$EDITOR
export VISUAL=$EDITOR

# customizing prompt
prompt_dir_color '34'
prompt_git_color '37'

PROMPT_DIRECTORY='\W'
PROMPT_SEPARATOR=' '
PROMPT_GIT_BRANCH='$(__git_ps1 "(%s) ")'
PROMPT_START='$(if [ "$?" -eq 0 ] ; then printf "\[\e[1;92m\]➜\[\e[0m\]"; else printf "\[\e[1;91m\]➜\[\e[0m\]"; fi) '

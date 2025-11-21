# customizing prompt
prompt_dir_color '34'
prompt_git_color '37'

PROMPT_DIRECTORY='\W'
PROMPT_SEPARATOR=' '
PROMPT_GIT_BRANCH='\[\e[0m\]$(__git_ps1 "(%s) ")\[\e[0m\]'
PROMPT_START='$([ "$?" -eq 0 ] && echo -n "\[\e[1;92m\]➜\[\e[0m\]" || echo -n "\[\e[1;91m\]➜\[\e[0m\]") '

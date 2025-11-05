export EDITOR="nvim"
export SUDO_EDITOR=$EDITOR
export VISUAL=$EDITOR

# customizing prompt
PROMPT_DIRECTORY='\W'
PROMPT_SEPARATOR=' '
PROMPT_GIT_BRANCH='$(__git_ps1 "(%s) ")'
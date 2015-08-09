local hostname="[%{$fg[yellow]%}%m%{$reset_color%}]"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"

PROMPT='${ret_status} %B%c%b $(git_prompt_info)%{$reset_color%}'
RPROMPT='%{$fg[yellow]%}%~%{$reset_color%} ${hostname}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}git:(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%})"

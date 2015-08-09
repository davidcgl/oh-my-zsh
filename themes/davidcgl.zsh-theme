local hostname="[%{$fg[blue]%}%m%{$reset_color%}]"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"

PROMPT='${hostname} ${ret_status} $(git_prompt_info)%{$reset_color%}'
RPROMPT='%{$fg[blue]%}%~%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}git:(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%})"

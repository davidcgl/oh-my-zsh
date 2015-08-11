function vcs_prompt() {
  if [[ ${PWD} = /google/src/cloud/${USER}/* ]]; then
    local CLIENT=$(g4 client -o | grep ^Client: | cut -d ':' -f 3)
    echo "%B%{$fg[yellow]%}citc:(%{$fg[red]%}${CLIENT}%{$fg[yellow]%})%b"
  else
    git_prompt_info
  fi
}

local HOSTNAME="%B[%{$fg_bold[red]%}%m%{$reset_color%}]%b"
local RET_STATUS="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"

PROMPT='${RET_STATUS} %B%c%b $(vcs_prompt) '
RPROMPT='%{$reset_color%} %B%~%b ${HOSTNAME}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}git:(%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}) ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[yellow]%})"

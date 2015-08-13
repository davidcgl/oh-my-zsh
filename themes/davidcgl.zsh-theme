function vcs_prompt() {
  if [[ ${PWD} = /google/src/cloud/davidcgl/* ]]; then
    local CLIENT=$(pwd | sed -E 's:^/google/src/cloud/davidcgl/([A-Za-z0-9_-]+).*:\1:g')
    echo "%B%{$fg[yellow]%}citc:(%{$fg[red]%}${CLIENT}%{$fg[yellow]%})%b"
  else
    git_prompt_info
  fi
}

local HOSTNAME="%B[%{$fg_bold[red]%}%m%{$reset_color%}%B]%b"
local RET_STATUS="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"

PROMPT='${RET_STATUS} %B%c%b $(vcs_prompt) '
RPROMPT='%{$reset_color%} %B%~%b ${HOSTNAME}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}git:(%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}) ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[yellow]%})"

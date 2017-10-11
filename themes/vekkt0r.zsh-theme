function get_host {
	echo "@%{$FG[142]%}"`hostname`"%{$reset_color%}"
}
prompt_status() {
  local symbols
  symbols=()
  [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}✘"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{magenta}%}⚙"

  [[ -n "$symbols" ]] && echo $symbols"%{$reset_color%} "
}
PROMPT='%{$fg[blue]%}%~%{$reset_color%} $(prompt_status)$(git_prompt_info)%{$reset_color%}
%{$fg[red]%}$ %{$reset_color%}'
#RPROMPT='$(git_prompt_info)$%{$reset_color%}$(get_host)'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"


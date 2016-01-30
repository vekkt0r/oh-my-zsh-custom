function get_host {
	echo "@%{$FG[142]%}"`hostname`"%{$reset_color%}"
}

PROMPT='%{$fg[blue]%}%~%{$reset_color%} $(git_prompt_info)%{$reset_color%}
%{$fg[blue]%}$ %{$reset_color%}'
#RPROMPT='$(git_prompt_info)$%{$reset_color%}$(get_host)'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"


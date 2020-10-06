alias agc='ag -G "\.cpp$"'
alias c='cd ..'
alias ec='emacsclient -n'
alias kb='bg && kill $! && fg'
alias ltr='ls -ltr'
alias cf='c++filt'
alias reboot='echo nope'
alias tb='tmux set-buffer'
alias tgf='tig --first-parent'
alias tgs='tig status'

# Global alias
alias -g F='find . -name'
alias -g G='| grep'
alias -g NF='*(oc[1])'
alias -g CF='| c++filt'
alias -g XG='| xargs grep'

# Suffix alias
alias -s {h,cpp,log,txt}=less
alias -s {html}=w3m

# Functions
gapp() {
  git diff -U0 | grepdiff --output-matching=hunk -E $1 | git apply --cached --unidiff-zero
}

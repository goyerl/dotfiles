# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1='\h:\[\033[93m\]\W \[\033[96m\]\u \[\033[38;5;48m\]$(git_branch)\[\033[0m\]\n\[\033[90m\]\$\[\033[00m\] '

alias k="/usr/local/bin/kubectl"

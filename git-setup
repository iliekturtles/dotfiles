git config --global fetch.prune true
git config --global pretty.changelog "format:%C(auto)%h%d %Cgreen%an %Cred(%cr) %Creset%s"
git config --global push.default simple

git config --global alias.ci "commit"
git config --global alias.ds "diff --staged"
git config --global alias.lag "log --all --graph --pretty=changelog --date-order"
git config --global alias.lg "log --graph --pretty=changelog --date-order"
git config --global alias.lp "log -p"
git config --global alias.st "status"
git config --global alias.unstage "reset HEAD --"
git config --global alias.up "pull --ff-only"
git config --global alias.update "pull --ff-only"

echo "git config --global user.name \"name\""
echo "git config --global user.email \"email\""
echo "git config --global credential.helper"
echo "    wincred"
echo "    /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring"
echo
echo "~/.bashrc:"
echo "    source /usr/share/git-core/contrib/completion/git-prompt.sh"
echo "    export PS1=\"\[\e[00;32m\]\u@\h \[\e[00;33m\]\w\\\$(__git_ps1 ' \[\e[00;36m\](%s)')\[\e[0m\]\$ \""
echo "    export GIT_PS1_SHOWDIRTYSTATE="
echo "    export GIT_PS1_SHOWSTASHSTATE="

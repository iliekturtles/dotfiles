git config --global fetch.prune true
git config --global pretty.changelog "format:%C(auto)%h%d %Cgreen%an %Cred(%cr) %Creset%s"
git config --global pull.rebase preserve
git config --global push.default simple

git config --global alias.ci "commit"
git config --global alias.dl "log --patch -1"
git config --global alias.ds "diff --staged"
git config --global alias.lag "log --all --graph --pretty=changelog"
git config --global alias.lg "log --graph --pretty=changelog"
git config --global alias.lp "log -p"
git config --global alias.st "status"
git config --global alias.unstage "reset HEAD --"

echo "git config --global user.name \"name\""
echo "git config --global user.email \"email\""
echo "git config --global credential.helper"
echo "    wincred"
echo "    /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring"

git config --global credential.https://github.com.username "mike.boutin@gmail.com"
git config --global fetch.prune true
git config --global pretty.changelog "format:%C(auto)%h%d %Cgreen%an %Cred(%cr) %Creset%s"
git config --global push.default simple
git config --global push.recurseSubmodules check
git config --global submodule.fetchJobs 0

git config --global alias.ci "commit --verbose"
git config --global alias.ds "diff --staged"
git config --global alias.down "merge --ff-only"
git config --global alias.fat "fetch --all --tags"
git config --global alias.lag "log --all --graph --pretty=changelog --date-order"
git config --global alias.lg "log --graph --pretty=changelog --date-order"
git config --global alias.lp "log -p"
git config --global alias.skipped '!git ls-files -v | grep "^[hS]"'
git config --global alias.st "status -sb"
git config --global alias.unstage "reset HEAD --"
git config --global alias.up "pull --ff-only"
git config --global alias.update "pull --ff-only"

if [ ! -z $MSYSTEM ]; then
    git config --global core.autocrlf true
    git config --global core.commentChar ";"
    git config --global core.pager "less -RS"
    git config --global credential.helper wincred
else
    git config --global core.autocrlf input
    git config --global core.commentChar auto
    git config --global credential.helper 'cache --timeout=14400'
fi

echo "git config --global user.name \"name\""
echo "git config --global user.email \"email\""

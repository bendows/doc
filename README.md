# Git commands

```shell
mkdir git ; cd git && git init
git init .

git remote add origin git@github.com:bendows/git.git
git remote show origin
git remote remove origin

git fetch
git fetch origin master

git checkout master

git checkout master && git merge origin/master
git checkout master && git merge origin/master --allow-unrelated-histories

git push origin master

```

# Git commands

```shell
mkdir git ; cd git && git init
git init .

git remote add origin git@github.com:bendows/git.git
git remote remove origin

git fetch origin master
git checkout master && git show

git checkout master && git merge origin/master
git checkout master && git merge origin/master --allow-unrelated-histories

git remote show origin
git fetch
git checkout master

git push origin master

git dif some-commit --name-status

git checkout HEAD -- some/where/some/file.go
git checkout HEAD -- .
git reset HEAD -- some/file/some/where.txt
git status

git diff --diff-filter=M --author=John\ Do

git show --name-status
git show
git checkout -

git checkout --theirs -- some-file-some-where # After / resolving a merge conflict

git clean -f #Dangerous - get's rid of untracked files to make the working tree clean

```
# LEMP 20.04.1 LTS (Focal Fossa)

```shell
sudo apt update
sudo apt install nginx
sudo apt install mysql-server
sudo apt install php-fpm php-mysql
sudo ufw allow 'Nginx HTTP'
sudo mysql_secure_installation
sudo nano /etc/nginx/sites-available/example.com
sudo ufw status
systemctl enable nginx
systemctl enable php7.4-fpm.service

```

```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
```

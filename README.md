## Git commands
```shell
# Color output # journalctl -lfu fblks.service --output cat

mkdir git ; cd git && git init
git init .
git config core.sshCommand "ssh -i /some/where/thekey -F /dev/null"
git remote add origin git@github.com:bendows/some-repo.git
git fetch

git remote remove origin

git fetch origin master
git checkout master && git show

git dif master --diff-filter=A --name-status

git checkout master && git merge origin/master
git checkout master && git merge origin/master --allow-unrelated-histories

git remote show origin
git fetch
git checkout master
git branch -M master
git push -u origin master
git push origin master

git dif some-commit --name-status
git checkout --theirs -- . && git add .

git checkout HEAD -- some/where/some/file.go
git checkout HEAD -- .
git reset HEAD -- some/file/some/where.txt
git status

git add -u   // Also remove files never committed and not in the index, nor in the working tree
git dif --cached --diff-filter=M --name-status
git diff --diff-filter=M --author=John\ Do

git diff --cached
git dif --cached --name-status

git show --name-status
git show
git checkout -

git checkout --theirs -- some-file-some-where # After / resolving a merge conflict

git clean -f #Dangerous - get's rid of untracked files to make the working tree clean

```
## Shell Commands
```shell
ssh -i "some-file.pem" user@1.2.3.4
//Test public and private key pair
diff <(ssh-keygen -y -e -f "/home/somewhere/.ssh/id_rsa" ) <( ssh-keygen -y -e -f "/home/somewhere/.ssh/id_rsa.pub")
// print out a private key's public key
ssh-keygen -y -f id_rsa

mkdir /media/ben/BENDISK ; mount -o ro /dev/sda1 /media/ben/BENDISK //Readonly
xargs < paragraph | tr -s '[[:blank:]]' '\n' 
xargs -n100 < paragraph | tr -s '[[:blank:]]' '\n' // outputs a text file as one word per line, limmiting the amount of lines by 100
```
## LEMP 20.04.1 LTS (Focal Fossa)
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
## MySQL
```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
-- for mysql8:
SET GLOBAL validate_password.LENGTH = 4;
SET GLOBAL validate_password.policy = 0;
SET GLOBAL validate_password.mixed_case_count = 0;
SET GLOBAL validate_password.number_count = 0;
SET GLOBAL validate_password.special_char_count = 0;
SET GLOBAL validate_password.check_user_name = 0;
create user 'asdf'@'%' identified by 'asdfasdfasdf';
GRANT ALL PRIVILEGES ON asdfasdf.* TO 'asdfasdf'@'%';

flush privileges
```
## egrep
```shell
egrep -nriI '^[^#]*(ServerName|DocumentRoot)' /etc/apache2/sites-available/*conf
tail -f /var/log/mysql/query.log | egrep -IEA10 'INSERT|UPDATE'
tail -f /var/log/mysql/query.log | egrep -iIEA10 'INSERT|UPDATE'
egrep --color -EriI '\$dims'
find fblks -iname "*go" -exec egrep --color -nrIE chan {} /dev/null \;

```

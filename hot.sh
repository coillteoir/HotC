
set -xe 

gcc -o /tmp/hot $1
echo $1
/tmp/hot

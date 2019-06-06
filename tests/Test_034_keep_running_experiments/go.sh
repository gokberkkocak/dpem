timeout 20 $1 -bc $2 -l ../simple_2.txt -rkj 4 -f 1 -t 2 > /dev/null
echo $?
$1 -dc $2 --stats
$1 -dc $2 --show-all
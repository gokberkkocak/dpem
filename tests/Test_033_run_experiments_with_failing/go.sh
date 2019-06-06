$1 -bc $2 -l ../simple_2.txt -rj 4 -f 1 -t 2 > /dev/null
$1 -dc $2 --stats
$1 -dc $2 --show-all
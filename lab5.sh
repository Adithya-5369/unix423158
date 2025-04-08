#q1
awk '/ERROR:/ {print $0}' logfile.txt
#q3
awk '{print $1}' server_log.txt | sort | uniq -c
#q8
sort -f file.txt | uniq -i
#q13
sed 's/  */ /g' file.txt
#q17
awk '{print $3}' file.txt

 #!/bin/sh 

f=nba.txt 

school1="$1"
school2="$2"

echo "school one is $school1" 
echo "school two is $school2" 

#school1_players = $(grep "$school1" < f | wc -l) 
#school2_players $(grep "$school2" < f | wc -l) 

school1_players=$(grep $school1 < "$f" | wc -l) 
school2_players=$(grep $school2 < $f | wc -l)


echo "school1 has $school1_players" 
echo "school2 has $school2_players"

# if [ $school1_players -gt $school2_players ]
# 	then
# 	exit 0 
# else
# 	exit 1 
# fi 

[ "$school1_players" -gt "$school2_players" ]



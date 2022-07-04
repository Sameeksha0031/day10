declare -A Computation=(
 [1]=0
 [2]=0
 [3]=0
 [4]=0
)
declare -a array
read -p "Enter a number" a
read -p "Enter a number" b
read -p "Enter a number" c
echo "Three User Inputs are :"$a $b $c

compute1=`echo $a $b $c | awk '{print ($1 + $2)*$3}'`
Computation[1]=$compute1

compute2=`echo $a $b $c | awk '{print ($1 * $2) + $3}'`
Computation[2]=$compute2

compute3=`echo $a $b $c | awk '{print $3 + $1 / $2}'`
Computation[3]=$compute3

compute4=`echo $a $b $c | awk '{print ($1 % $2) + $3}'`
#echo $compute4
Computation[4]=$compute4

declare -a array
index=3
for i in ${!Computation[@]}
do
 array[$i]+=${Computation[$i]}
done
echo ${array[@]}

function diction()
{
 com=$1
 declare -A Computation=(
 [0]=0
 )
 for i in ${!Computation[@]}
  do
    Computation[$i]+=$com
  done
  echo ${Computation[@]}
}
read -p "Enter a number" a
read -p "Enter a number" b
read -p "Enter a number" c
echo "Three User Inputs are :"$a $b $c

compute1=`echo $a $b $c | awk '{print ($1 + $2)*$3}'`
#echo $compute1
(diction $compute1)

compute2=`echo $a $b $c | awk '{print ($1 * $2) + $3}'`
#echo $compute2
(diction $compute2)

compute3=`echo $a $b $c | awk '{print $3 + $1 / $2}'`
#echo $compute3
(diction $compute3)

compute4=`echo $a $b $c | awk '{print ($1 % $2) + $3}'`
#echo $compute4
(diction $compute4)



#q1
read -p "Enter a number: " num
val=$(expr $num % 2)
If [ $val -eq 0 ]; then
    echo "$num is even"
else
    echo "$num is odd"
fi
#q2
read -p "Enter year: " year
if [ $((year % 4)) -eq 0 ]
then
	if [ $((year % 100)) -eq 0 ] && [ $((year % 400)) -eq 0 ]
	then
		echo "$year is a leap year"
	else
		echo "$year is not a leap year"
	fi
else
	echo "$year is not a leap year"
fi
#q3
read -p "Enter number: " num
a=$num
sum=1
if [ $num -eq 0 ]
then
	echo "Factorial of $num is: $sum"
else
	while [ $num -ge 1 ]
	do
		sum=$(echo "$sum * $num" | bc)
		num=$((num - 1))
	done
	echo "Factorial of $a is: $sum"
fi
#q4
echo "Enter Two Numbers:"
read -p "First Number: " num1
read -p "Second Number:" num2
temp=$num1
num1=$num2
num2=$temp
echo "After Swapped:"
echo "First Number: $num1"
echo "Second Number: $num2"
#q5
echo "Enter Two Numbers:"
read -p "First Number: " num1
read -p "Second Number: " num2
a=$num1
b=$num2
while [ $b -ne 0 ]
do
	temp=$b
	b=$((a % b))
	a=$temp
done
gcd=$a
val1=$((num1 * num2))
lcm=$(echo "scale=0; $val1 / $gcd" | bc)
echo "GCD of $num1 and $num2 is: $gcd"
echo "LCM of $num1 and $num2 is: $lcm"

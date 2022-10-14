echo -n "Enter first number: "
read num1
echo -n "Enter Second number: "
read num2
if [ $num1 -lt $num2 ]; then 
	  gcd=$num1
else
	  gcd=$num2
fi
while [ $gcd -ne 0 ]; do
	  rem1=$(expr $num1 % $gcd)
	  rem2=$(expr $num2 % $gcd)
	  if [ $rem1 -eq 0 ] && [ $rem2 -eq 0 ]; then
		  echo $gcd
		  exit 1
	  fi
	  gcd=$(expr $gcd - 1)
done

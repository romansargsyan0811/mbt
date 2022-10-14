echo -n "Input the ranges first numbers: "  
read  num1 
echo -n "Input the ranges last numbers: "
read  num2 
echo "***************************************"
result=0
number=`seq $num1 $num2 `
for n in ${num[@]};do
	  for((i=n-1; i>=2; i--))
	  do
  		  if [ $((n%i)) -eq 0 ];then
			  res=1;	
			  break
		  else
			  res=0
  		  fi
	  done
	  if [ $res -eq 1 ]; then
		  continue	
	  else
		  echo $n
	  fi
done

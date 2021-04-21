#!/bin/bash -x


empCheck=$((RANDOM%2))

if  [ $empCheck -eq 1 ]
then
        empWage=20;
        empHrs=8;
      echo =$(($empWage*$empHrs))

else 
        echo  =0;
fi

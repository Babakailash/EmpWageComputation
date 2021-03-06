#!/bin/bash -x

#CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

# VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;


function getWorkingHours() 
 {
  case $1 in
    $IS_FULL_TIME)
    workHours=8
     ;;
    $IS_PART_TIME)
     workHours=4
      ;;
    *)
    workHours=0
     ;;
esac
  echo $workHours
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $NUM_WORKING_DAYS ]]

do
      ((totalWorkingDays++))

     workHours="$( getWorkingHours $((RANDOM%3)) )"
     totalEmpHrs=$(($totalEmpHrs+$workHours))
  done

      totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));

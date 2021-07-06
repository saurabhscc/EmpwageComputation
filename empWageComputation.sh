#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
Attendance=$((RANDOM%2))
if [ $Attendance -eq 1 ]
then
    echo "Employee is Present"
else
    echo "Employee is Absent"
fi
isPartTime=1
isFullTime=2
empRatePerHr=20
maxHrsInMonth=100
numWorkingDays=20
totalWorkHours=0
totalWorkingDays=0

while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
    ((totalWorkingDays++))
    empCheck=$((RANDOM%3))
         case $empCheck in
Function GetWorkingHours () 
{

         case $1 in
                  $isFullTime)
                        empHrs=8;
                        ;;
@@ -35,7 +33,12 @@ do
                        empHrs=0;
                        ;;
         esac
         totalWorkHours=$(($totalWorkHours+$empHrs))
}

while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
        totalWorkHours=$(($totalWorkHours+$empHrs))
done
         monthlyWage=$(($totalWorkHours*$empRatePerHr))

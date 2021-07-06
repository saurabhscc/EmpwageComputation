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

function getWorkingHours() {
declare -A dailyWage

         case $1 in
function getWorkingHours () {
         local $empcheck=$1
         case $empCheck in
                  $isFullTime)
                        empHrs=8;
                        workHrs=8;
                        ;;
                  $isPartTime)
                        empHrs=4;
                        workHrs=4;
                        ;;
                  *)
                        empHrs=0;
                        workHrs=0;
                        ;;
         esac
         echo $workHrs
}


function getEmpWage() {
        echo $(($1*$empRatePerHr))
        local empHr=$1
        echo $(($empHr*empRatePerHr))
}


while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
        totalWorkHours=$(($totalWorkHours+$empHrs))
        dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr)) 
        empCheck=$((RANDOM%3))
        workHrs="$( getWorkingHours $empCheck )"
        totalWorkHours=$(($totalWorkHours+$workHrs))
        dailyWage["Day" $totalWorkingDays]="$( getEmpWage $workHrs )"
done

totalSalary="$( getEmpWage $totalWorkHours )"
totalSalary=$(($totalWorkHours*$empRatePerhr))
echo ${dailywage[@]}
echo ${!dailyWage[@]}

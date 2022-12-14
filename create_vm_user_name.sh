MACHINE="aos-common"
GROUP_POOL=({0..16})
STUDENTS_POOL=(Prasenjit-Harsh Deep-Aaditya Ashutosh-Vanshita Sajal-Gandhi Parth-Suhas Anurat-Ashwamegh Debanjan-Pritkumar Aditya-Venkata Satvik-Shashvat Akshat-Anindya Sanjay-Rahul Parth-Shashwat Rajat-Neha-Nisarg Aritra Subham-Ravi Abhishek-Saumyak Utkarsh)
set -x
for x in ${GROUP_POOL[@]}
do
	ssh root@localhost -p $(printf "120%02d" $x) "adduser ${STUDENTS_POOL[$x]} --force-badname; usermod -a -G sudo ${STUDENTS_POOL[$x]}; chage -d 0 ${STUDENTS_POOL[$x]}; exit;"
done

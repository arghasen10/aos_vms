MACHINE="aos-common"
GROUP_POOL=({0..14})
STUDENTS_POOL=(Prasenjit-Harsh Deep-Aaditya Ashutosh-Vanshita Sajal-Gandhi Parth-Suhas Anurat-Ashwamegh Debanjan-Pritkumar Aditya-Venkata Satvik-Shashvat Akshat-Anindya Sanjay-Rahul Parth-Shashwat Rajat-Neha-Nisarg Aritra Subham-Ravi)

for x in ${GROUP_POOL[@]}
do
	VBoxManage startvm ${STUDENTS_POOL[$x]} --type headless
done

MACHINE="aos-common"
GROUP_POOL=({0..16})
STUDENTS_POOL=(Prasenjit-Harsh Deep-Aaditya Ashutosh-Vanshita Sajal-Gandhi Parth-Suhas Anurat-Ashwamegh Debanjan-Pritkumar Aditya-Venkata Satvik-Shashvat Akshat-Anindya Sanjay-Rahul Parth-Shashwat Rajat-Neha-Nisarg Aritra Subham-Ravi Abhishek-Saumyak Utkarsh)

for x in ${GROUP_POOL[@]}
do
	VBoxManage controlvm ${STUDENTS_POOL[$x]} poweroff
	VBoxManage unregistervm ${STUDENTS_POOL[$x]}
	rm -rf /home/user/aos_vms/students_vm/${STUDENTS_POOL[$x]}
done

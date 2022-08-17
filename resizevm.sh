MACHINE="aos-common"
GROUP_POOL=({0..16})
STUDENTS_POOL=(Prasenjit-Harsh Deep-Aaditya Ashutosh-Vanshita Sajal-Gandhi Parth-Suhas Anurat-Ashwamegh Debanjan-Pritkumar Aditya-Venkata Satvik-Shashvat Akshat-Anindya Sanjay-Rahul Parth-Shashwat Rajat-Neha-Nisarg Aritra Subham-Ravi Abhishek-Saumyak Utkarsh)

for x in ${GROUP_POOL[@]}
do
	VBoxManage modifyhd "/home/user/aos_vms/students_vm/${STUDENTS_POOL[$x]}/${STUDENTS_POOL[$x]}.vdi" --resize 25000
done

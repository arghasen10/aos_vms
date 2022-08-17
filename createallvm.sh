MACHINE="aos-common"
GROUP_POOL=({0..16})
STUDENTS_POOL=(Prasenjit-Harsh Deep-Aaditya Ashutosh-Vanshita Sajal-Gandhi Parth-Suhas Anurat-Ashwamegh Debanjan-Pritkumar Aditya-Venkata Satvik-Shashvat Akshat-Anindya Sanjay-Rahul Parth-Shashwat Rajat-Neha-Nisarg Aritra Subham-Ravi Abhishek-Saumyak Utkarsh)

for x in ${GROUP_POOL[@]}
do
	VBoxManage clonevm $MACHINE --mode machine --options keephwuuids --name ${STUDENTS_POOL[$x]} --basefolder /home/user/aos_vms/students_vm/ --register
	VBoxManage modifyvm ${STUDENTS_POOL[$x]} --vrde off
	VBoxManage modifyvm ${STUDENTS_POOL[$x]} --natpf1  delete "Rule 1"
        VBoxManage modifyvm ${STUDENTS_POOL[$x]} --natpf1 $(printf "ssh,tcp,,120%02d,,22" $x)
    	VBoxManage modifyvm ${STUDENTS_POOL[$x]} --vrde on --vrdeport $(printf "150%02d" $x)
	VBoxManage startvm ${STUDENTS_POOL[$x]} --type headless
done

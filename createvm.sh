VBoxManage createvm --name Arghavm --ostype Ubuntu_64 --basefolder /home/user/aos_vms/ --register
VBoxManage modifyvm Arghavm --cpus 4 --memory 8192
#VBoxManage modifyvm Arghavm --resize 15000
VBoxManage modifyvm Arghavm --vrde off
VBoxManage modifyvm Arghavm --natpf2 delete ssh
VBoxManage modifyvm Arghavm --natpf2 ssh,tcp,,13000,,22
VBoxManage modifyvm Arghavm --vrde on --vrdeport 14000
VBoxManage guestcontrol Arghavm --username argha --passwordfile /home/user/aos_vms/password
VBoxManage storagectl Arghavm --name IDE --add ide
VBoxManage storageattach Arghavm --storagectl IDE --port 0 --device 0 --type dvddrive --medium /home/user/ubuntu-20.04.4-desktop-amd64.iso
#VBoxManage Arghavm updateguestadditions --source /home/user/ubuntu-20.04.4-desktop-amd64.iso
#VBoxManage startvm Arghavm --type headless
VBoxHeadless --startvm Arghavm 

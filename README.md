# ovh-public-cloud-additional-drive-bash-script
Partition and mount additional drive to an OVH public cloud vm server bash script.

### Note:
We will be using an Ubuntu 16.04 OS Image and will have already installed "wget" with the following command:
```Bash
sudo apt-get update sudo apt-get install wget
```
The third character of the drive name will alpha increment. For example, the first additional drive will be called "vdb", the second "vdc", the third "vdd" and so on. 



### Step 1:
- Create an additional drive from the ovh control panel
- Attach the drive to a public cloud server
- Connect via SSH into the server


### Step 2:
- Download the bash script from this repository to the public cloud server
- Make the bash script executable
```Bash
cd /
sudo wget https://raw.githubusercontent.com/entonbiba/ovh-public-cloud-additional-drive-bash-script/master/ovh_adpc.sh
chmod +x ovh_adpc.sh
```

### Step 3:
- Run the script
```Bash
sudo bash ovh_adpc.sh
```



## Finished
You should now be able to use the additional drive from the mounted directory "/mnt/disk"



Reference: https://www.ovh.com/ca/en/g1863.create_and_configure_an_additional_disk_on_an_instance

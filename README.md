# ovh-public-cloud-additional-drive-bash-script
Partition and mount additional drive to an OVH public cloud vm server bash script.

### Note:
We will be using an Ubuntu 16.04 OS Image and will have already installed "wget" with the following command:
```Bash
sudo apt-get update sudo apt-get install wget
```
There are two types of additional disks that can be mounted on OVH Public Cloud servers.
- <a href="ovh_adpc_classic_disk.sh">Classic disk (starts with the letter s)</a>
- <a href="ovh_adpc_highperformance_disk.sh">High Performance disk (starts with the letter v)</a>
The third character of the drive name will alpha increment.<br/>
For example if it's a high performance disk, the first additional drive will be called "vdb", the second "vdc", the third "vdd" and so on. 



### Step 1:
- Create an additional drive from the ovh control panel
- Attach the drive to a public cloud server
- Connect via SSH into the server


### Step 2:
- Download the bash script from this repository to the public cloud server
- Make the bash script executable

#### Classic Disk
```Bash
cd /
sudo wget https://raw.githubusercontent.com/entonbiba/ovh-public-cloud-additional-drive-bash-script/master/ovh_adpc_classic_disk.sh
chmod +x ovh_adpc_classic_disk.sh
```

#### High Performance Disk
```Bash
cd /
sudo wget https://raw.githubusercontent.com/entonbiba/ovh-public-cloud-additional-drive-bash-script/master/ovh_adpc_highperformance_disk.sh
chmod +x ovh_adpc_highperformance_disk.sh
```

### Step 3:
- Run the script

#### Classic Disk
```Bash
sudo bash ovh_adpc_classic_disk.sh
```

#### High Performance Disk
```Bash
sudo bash ovh_adpc_highperformance_disk.sh
```



## Finished
You should now be able to use the additional drive from the mounted directory "/mnt/disk"


Link: https://www.ovh.com/ca/en/cloud/instances/

Reference: https://www.ovh.com/ca/en/g1863.create_and_configure_an_additional_disk_on_an_instance

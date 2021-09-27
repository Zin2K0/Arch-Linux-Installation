<h1 align="center">Arch-Linux-Installation-Scripts</h1>
<h1></h1>
<p align="right">powered by: ZinKO</p>


<p>&emsp;&emsp;In this repository you will find packages-scripts for the base install of Arch Linux and the Gnome, KDE and Xfce desktop environments. For Windows Managers still only for DWM. Modify the packages to your requirement, make the script executable with chmod +x scriptname and then run with ./scriptname. Remember that the first part of the Arch Linux install is manual, that is you will have to partition, format and mount the disk yourself. Install the base packages and make sure to inlcude git so that you can clone the repository in chroot.</p>
<h2>For summary:</h2>
<ol>
<li>Partition the disk</li>
<li>Format the partitions</li>
<li>Mount the partitions</li>
<li>Install the base packages into /mnt</li>
<li>
<strong>pacstrap /mnt base linux linux-firmware git vim intel-ucode (or amd-ucode)</strong>
</li>
<li>Generate the FSTAB file with<strong>genfstab -U /mnt >> /mnt/etc/fstab</strong>
</li>
<li>Chroot in with <strong>arch-chroot /mnt</strong></li>
<li>Download the git repository with<strong>git clone https://github.com/Zin2K0/Arch-Linux-Installation.git</strong>
</li>
<li><strong>cd Arch-Linux-Installation chmod +x</strong></li>
<li>Base_Installer_EFI.sh run with <strong>./Base_Installer_EFI.sh </strong></li>
</ol>

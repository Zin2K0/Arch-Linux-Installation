<style>
      @import url("https://fonts.googleapis.com/css2?family=Montserrat&display=swap");
      * {
        /* margin: 10px 5px; */
        font-family: "Montserrat", sans-serif;
        background-color: #b3b3b3;
        color: rgb(49, 49, 49);
      }
      h1 {
        /* background-color: gold; */
        color: black;
        padding-top: 20px;
      }
      .author {
        text-align: right;
        /* background-color: gold; */
        color: black;
        margin-bottom: 20px;
      }
      .header {
        /* background-color: gold; */
        height: 100px;
      }
      h2 {
        margin: 15px 10px;
      }
      hr {
        background-color: gold;
        height: 1px;
      }
    </style>
    <div class="header">
      <h1 align="center">Arch-Linux-Installation-Scripts</h1>
      <p class="author">powered by: ZinKO</p>
    </div>

    <hr />

    <p>
      &emsp;&emsp;In this repository you will find packages-scripts for the base
      install of Arch Linux and the Gnome, KDE and Xfce desktop environments.
      For Windows Managers still only for DWM. Modify the packages to your
      requirement, make the script executable with chmod +x scriptname and then
      run with ./scriptname. Remember that the first part of the Arch Linux
      install is manual, that is you will have to partition, format and mount
      the disk yourself. Install the base packages and make sure to inlcude git
      so that you can clone the repository in chroot.
    </p>

    <h2>For summary:</h2>
    <ol>
      <li>Partition the disk</li>
      <li>Format the partitions</li>
      <li>Mount the partitions</li>
      <li>Install the base packages into /mnt</li>
      <li>
        <strong
          >pacstrap /mnt base linux linux-firmware git vim intel-ucode (or
          amd-ucode)</strong
        >
      </li>
      <li>
        Generate the FSTAB file with
        <strong>genfstab -U /mnt >> /mnt/etc/fstab</strong>
      </li>
      <li>Chroot in with <strong>arch-chroot /mnt</strong></li>
      <li>
        Download the git repository with
        <strong
          >git clone
          https://github.com/Zin2K0/Arch-Linux-Installation.git</strong
        >
      </li>
      <li><strong>cd Arch-Linux-Installation chmod +x</strong></li>
      <li>
        Base_Installer_EFI.sh run with <strong>./Base_Installer_EFI.sh </strong>
      </li>
    </ol>

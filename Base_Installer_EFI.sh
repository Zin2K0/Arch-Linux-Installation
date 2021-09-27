#! /bin/bash

## Before script make partition and mount 
## Then install base linux linux-firmware git vim amd-ucode or intel-ucode
## genfstab -U /mnt >> /mnt/etc/fstab
## arch-chroot /mnt
## git clone https://xxxxxx.this script


ln -sf /usr/share/zoneinfo/Asia/Yangon /etc/localtime
hwclock --systohc
sed -i ‘177s/ .//’ /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "arch_dwm" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch_dwm.localdomain arch_dwm" >> /etc/hosts
echo root:password | chpasswd

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm
# Package depends on your systems ==> wpa_supplicant hplip tlp
# trim
pacman -S --noconfirm grub efibootmgr networkmanager network-manager-applet dialog mtools dosfstools reflector base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync acpi acpi_call virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font

pacman -S --noconfirm xf86-video-amdgpu xf86-video-ati mesa xf86-video-intel 
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
# systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
# systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
systemctl enable reflector.timer
# systemctl enable fstrim.timer # for SSD
systemctl enable libvirtd
systemctl enable firewalld
# systemctl enable acpid # AC power event handling notebook

useradd -m -G wheel zinko
echo zinko:password | chpasswd
usermod -aG libvirt zinko

echo "zinko ALL=(ALL) ALL" >> /etc/sudoers.d/zinko

printf "\e[1;32mDone! Type exit, umount -R /mnt and reboot.\e[0m"

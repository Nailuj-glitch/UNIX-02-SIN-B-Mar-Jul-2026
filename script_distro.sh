
#Paso 2: Instalar dependencias

sudo apt update
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-d

#¿Para qué sirve cada paquete?
gcc , make — compilación del kernel y BusyBox
libncurses-dev — menús interactivos de configuración ( menuconfig )
flex , bison , bc — requeridos por el proceso de build del kernel
cpio — para crear el initramfs
libelf-dev , libssl-dev — dependencias del kernel
syslinux — el bootloader
dosfstools — para crear el filesystem FAT
qemu-system-x86 — para probar la imagen sin necesidad de hardware real

#Compilar el kernel Linux
#Clona el repositorio del kernel
git clone --depth 1 https://github.com/torvalds/linux.git
cd linux
#Configura las opciones de compilación:
make menuconfig

#Compila el kernel:
make -j 2

#Al finalizar, se ve un mensaje indicando que 
bzImage is ready #Kernel: arch/x86/boot/bzImage is ready  (#1)

# Copia la imagen del kernel a un directorio de trabajo:
sudo mkdir /boot-files
sudo cp arch/x86/boot/bzImage /boot-files/
cd ..


#Paso 4: Compilar BusyBox

git clone --depth 1 https://git.busybox.net/busybox
cd busybox

#Configura BusyBox:
make menuconfig

#Configura BusyBox:
make menuconfig
#Cambio importante: Navega a Settings → Build Options y activa Build static binary (no shared libs) presionando la barra espaciadora. Esto evita dependencias externas de librerías. Guarda y sal.

#compila
make -j 2

#Instala en el directorio del initramfs:
sudo mkdir /boot-files/initramfs
sudo make CONFIG_PREFIX=/boot-files/initramfs install

#Paso 5: Crear el initramfs

#El initramfs es el sistema de archivos inicial que el kernel carga en memoria al arrancar.
cd /boot-files/initramfs

#Crea el archivo init , que es el primer programa que el kernel ejecuta:
sudo vi init

#Escribe el siguiente contenido:

#!/bin/sh

/bin/sh

#La primera línea le dice al kernel que use el shell para interpretar el archivo. La segunda línea inicia un shell interactivo.

#Limpia y prepara los archivos:
sudo rm linuxrc
sudo chmod +x init

#Empaqueta todo en un archivo cpio (el formato que el kernel espera para el initramfs):
sudo find . | cpio -o -H newc > ../init.cpio
cd ..


#Paso 6: Crear la imagen de boot

#Cambia a root para los siguientes pasos (simplifica los permisos):
sudo su

#Crea un archivo vacío de 50 MB que servirá como disco virtual:
dd if=/dev/zero of=boot bs=1M count=50

#Crea un filesystem FAT en ese archivo (requerido por Syslinux):
mkfs -t fat boot

#Instala el bootloader Syslinux en la imagen:
syslinux boot

#Monta la imagen y copia el kernel y el initramfs:
mkdir m
mount boot m
cp bzImage init.cpio m
umount m
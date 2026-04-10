
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
bzImage is ready 

# Copia la imagen del kernel a un directorio de trabajo:
sudo mkdir /boot-files
sudo cp arch/x86/boot/bzImage /boot-files/
cd ..


#Paso 4: Compilar BusyBox

git clone --depth 1 https://git.busybox.net/busybox
cd busybox

#Configura BusyBox:
make menuconfig



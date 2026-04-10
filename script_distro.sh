
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
sudo apt update
sudo apt install ansible -y
sudo apt git
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
ls -l
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
ls -l
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo wipefs -a /dev/sdc1 /dev/sdc2 /dev/sdd1
sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1
sudo pvs
sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
sudo vgcreate vg_temp /dev/sdd1
sudo vgs
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo fdisk -l
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mkdir -p /var/lib/docker/
sudo mkdir -p /work/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
ls -l
cd RTA_Examen_20241118/
ls -l
vim Punto_A.sh
chmod +x Punto_A.sh
ls -l
vim Punto_B.sh
chmod +x Punto_B.sh
ls -l
./Punto_B.sh
vim Punto_B.sh
./Punto_B.sh
ls -l
vim Punto_B.sh
./Punto_B.sh
lsblk
mount
ls -l
cd RTA_Examen_20241118/
ls -l
vim Punto_A.sh
cat Punto_A.sh
vim Punto_B.sh
./Punto_B.sh
ls -l
cd ..
ls -l
RTA_Examen_20241118/
cd RTA_Examen_20241118/
lsblk
vim Punto_B.sh
./Punto_B.sh
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cat Lista_Usuarios.txt 
vim Lista_Usuarios.txt 
cd
cd RTA_Examen_20241118/
ls -l
./Punto_B.sh
cd
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cat Lista_Usuarios.txt 
ls -l
vim Lista_Usuarios.txt 
cd
cd RTA_Examen_20241118/
ls -l
./Punto_B.sh
cat Punto_B.sh
vim Punto_B.sh
./Punto_B.sh
cat Punto_B.sh
vim Punto_B.sh
./Punto_B.sh
cd
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker/
ls -l
vim index.html 
cd ..
cd RTA_Examen_20241118/
ls -l
vim Punto_C.sh
chmod +x Punto_C.sh
./Punto_C.sh
id
sudo usermod -aG docker vagrant
id
exit
id
cd RTA_Examen_20241118/
ls -l
./Punto_C.sh
docker images
docker ps
ls -l
cd
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker/
ls -l
cat Dockerfile 
vim Dockerfile 
cat index.html 
cat run.sh 
cd
cd RTA_Examen_20241118/
ls -l
cat Punto_C.sh
vim Punto_C.sh
./Punto_C.sh
cat Punto_C.sh
cd
pwd
ls -l
cd RTA_Examen_20241118/
ls -l
vim Punto_C.sh
./Punto_C.sh
cat Punto_C.sh
vim Punto_C.sh
./Punto_C.sh
cat Punto_A.sh
cat Punto_B.sh
./Punto_C.sh
ls -l
vim Punto_D.sh
chmod +x Punto_D.sh
ls -l
./Punto_D.sh
ls -l
docker image list
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd ..
ls -l
cd RTA_Examen_20241118/
ls -l
./Punto_B.sh
cat Punto_B.sh
cd ..
ls -l
UTN-FRA_SO_Examenes/
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker/
ls -l
vim Dockerfile
docker build -t lulinaizquierdo2/web1-lucianaizquierdo -f web1-lucianaizquierdo .
cd
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
cat Dockerfile 
sudo systemctl restart docker
sudo systemctl status docker
docker image list
cd ..
ls -l
git clone https://github.com/LucianaIzquierdo02/UTNFRA_SO_2do_Parcial_IzquierdoLuciana.git
ls -l
cd UTNFRA_SO_2do_Parcial_IzquierdoLuciana/
ls -l
cp -r /home/vagrant/UTN-FRA_SO_Examenes/202406 /home/vagrant/UTNFRA_SO_2do_Parcial_IzquierdoLuciana/
cp -r /home/vagrant/RTA_Examen_$(date +%Y%m%d) /home/vagrant/UTNFRA_SO_2do_Parcial_IzquierdoLuciana/
ls -l
cd 202406/
ls -l
cd ..
ls -l
cp -r /home/vagrant/RTA_Examen_$(date +%Y%m%d) /home/vagrant/UTNFRA_SO_2do_Parcial_IzquierdoLuciana/
ls -l
tree
ls /home/vagrant/RTA_Examen_$(date +%Y%m%d)
cd ..
ls -l
ls /home/vagrant/RTA_Examen_$(date +%Y%m%d)
cd RTA_Examen_20241118/
ls -l
cd ..
ls -l
cd UTNFRA_SO_2do_Parcial_IzquierdoLuciana/
ls -l
cp -r /home/vagrant/RTA_Examen_20241118 /home/vagrant/UTNFRA_SO_2do_Parcial_IzquierdoLuciana/
ls -l
history -a
ls -l
cd RTA_Examen_20241118/
ls -l
history -a
cd ..
ls -l
cd
ls -l
cd UTNFRA_SO_2do_Parcial_IzquierdoLuciana/
ls -l
$HOME/.bash_history
sudo $HOME/.bash_history
cd ..
pwd
ls -l
cat foo/
git init
git add .
git commit -m "ultimo commit"
git config --global user.email "lulinaizquierdo2@gmail.com"
git config --global user.name "LucianaIzquierdo02"
git push -u origin master
git branch
ls -l
git
git status

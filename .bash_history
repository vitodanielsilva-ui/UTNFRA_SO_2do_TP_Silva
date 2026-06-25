whoami
sudo apt update
git config --global user.name vitodanielsilva-ui
git config --global user.email vitodanielsilva@gmail.com
git config --global --list
cd ~
git clone https://github.com/vitodanielsilva-ui/UTNFRA_SO_2do_TP_Silva.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
sudo apt install -y ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
echo vito
docker --version
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
ansible --version
mkdir ~/RTA_Examen_$(date +%Y%m%d)
ls -
mkdir ~/RTA_Examen_$(date +%Y%m%d)
ls ~
lsblk
sudo apt install -y lvm2
sudo pvcreate /dev/sdc /dev/sdd
sudo vgcreate vg_datos /dev/sdc
sudo vgcreate vg_temp /dev/sdd
sudo lvcreate -L 5MB -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512MB -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap
echo '/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/vg_datos/lv_workareas /work ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/vg_temp/lv_swap none swap sw 0 0' | sudo tee -a /etc/fstab
tail -3 /etc/fstab
sudo systemctl restart docker
sudo systemctl status docker
df -h | grep -E "docker|work"
free -h | grep Swap
nano ~/RTA_Examen_20260625/Punto_A.sh
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls ~/UTN-FRA_SO_Examenes/202406/
ls ~/UTN-FRA_SO_Examenes/
cd ~
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
source ~/.bashrc && history -a
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo nano /usr/local/bin/SilvaAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/SilvaAltaUser-Groups.sh
sudo /usr/local/bin/SilvaAltaUser-Groups.sh vito ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
getent group 2P_GDesa 2P_GTest 2PSupervisores
id 2P_202406_Prog1
cp /usr/local/bin/SilvaAltaUser-Groups.sh ~/RTA_Examen_20260625/
nano ~/RTA_Examen_20260625/Punto_B.sh
cd ~/UTN-FRA_SO_Examenes/202406/docker/
ls
cat index.html
nano index.html
nano Dockerfile
docker build -t web1-Silva .
docker build -t web1-silva .
docker images
docker login
docker tag web1-silva vitodanielsilvaui_dockerhub/web1-silva
docker push vitodanielsilvaui_dockerhub/web1-silva
docker tag web1-silva vitodanielsilvaui/web1-silva
docker push vitodanielsilvaui/web1-silva
nano ~/UTN-FRA_SO_Examenes/202406/docker/run.sh
chmod +x ~/UTN-FRA_SO_Examenes/202406/docker/run.sh
~/UTN-FRA_SO_Examenes/202406/docker/run.sh
docker ps
curl http://localhost:8080
nano ~/RTA_Examen_20260625/Punto_C.sh
ls ~/UTN-FRA_SO_Examenes/202406/ansible/
ls ~/UTN-FRA_SO_Examenes/202406/ansible/roles/
ls ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do\ parcial/
ls ~/UTN-FRA_SO_Examenes/202406/ansible/roles/"2do parcial"/
ls ~/UTN-FRA_SO_Examenes/202406/ansible/roles/
ls ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/
ls ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/
cat ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
cat ~/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
cat ~/UTN-FRA_SO_Examenes/202406/ansible/inventory
ls ~/UTN-FRA_SO_Examenes/202406/ansible/inventory/
cat ~/UTN-FRA_SO_Examenes/202406/ansible/inventory/hosts
ls ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/
mkdir ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
nano ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2
nano ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_equipo.txt.j2
nano ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i inventory playbook.yml
nano ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
ansible-playbook -i inventory playbook.yml
nano ~/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
ansible-playbook -i inventory playbook.yml
ansible-playbook -i inventory playbook.yml --ask-become-pass
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
nano ~/RTA_Examen_20260625/Punto_D.sh
cp -r ~/UTN-FRA_SO_Examenes/202406/ ~/UTNFRA_SO_2do_TP_Silva/
cp -r ~/RTA_Examen_20260625/ ~/UTNFRA_SO_2do_TP_Silva/
history -a

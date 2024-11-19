#!/bin/bash

# Ruta del repositorio
cd /home/vagrant/UTN-FRA_SO_Examenes/202406/docker/

# sudo usermod -a -G docker $(whoami)
# exit
# vagrant ssh

id
docker login -u lulinaizquierdo2 << EOF
dckr_pat_rsz58BsB1P8buNdb1p8hdkJb12U
EOF

# Modificar index.html
echo "<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Noviembre 2024 </h2> </br>
<h3> Luciana Izquierdo </h3>
<h3> División: 115 </h3>
</div>" > index.html

# Crear Dockerfile
cat <<EOF > Dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
EOF

# Construir y pushear la imagen
docker build -t "lulinaizquierdo2/web1-lucianaizquierdo" .
docker push "lulinaizquierdo2/web1-lucianaizquierdo:latest"

# Crear script run.sh
cat <<EOF > run.sh
#!/bin/bash
docker run -d -p 8080:80 "lulinaizquierdo2/web1-lucianaizquierdo"
EOF

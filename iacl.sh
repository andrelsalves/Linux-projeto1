#!/bin/bash

echo "Criando Diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir sec

echo "Criando grupos de usuarios...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..." 

useradd carlos -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd carlos -e

useradd maria -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd maria -e

useradd joao -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd joao -e

useradd debora -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd rogerio -e

echo "Permissoes dos diretorios"

chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizaçao do Script"

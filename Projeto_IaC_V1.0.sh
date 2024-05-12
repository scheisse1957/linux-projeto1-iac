#!/bin/bash
#Script Projeto Linux Fundamentals - Prof. Denilson Bonatti

echo "Criando diretórios na raiz..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "CRIANDO GRUPOS DE USUÁRIOS..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "CRIANDO USUÁRIOS E DEFININDO GRUPOS..."

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd -6 -salt xyz 123654) -G GRP_ADM
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd -6 -salt xyz 123654) -G GRP_ADM
useradd joao -c "João da Silva" -m -s /bin/bash -p $(openssl passwd -6 -salt xyz 123654) -G GRP_ADM

useradd debora -c "Débora da Silva" -m -s /bin/bash -p $(openssl passwd -6 -salt xyz 123654) -G GRP_VEN
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd -6 -salt xyz 123654) -G GRP_VEN
useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd -6 -salt xyz 123654) -G GRP_VEN

useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd -6 -salt xyz 123654) -G GRP_SEC
useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd -6 -salt xyz 123654) -G GRP_SEC
useradd rogerio -c "Rogério da Silva" -m -s /bin/bash -p $(openssl passwd -6 -salt xyz 123654) -G GRP_SEC

echo "ESPECIFICANDO PERMISSÕES PARA OS DIRETÓRIOS..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

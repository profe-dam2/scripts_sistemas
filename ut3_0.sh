#!/bin/bash

# EJERCICIO UT3_0
# LOGIN CON INTENTOS
intentos=3
clear
echo -e "\nPROGRAMA UT3_0\n"
# Pedir el nombre de usuario
read -p "Indica el nombre de usuario: " nombre

while [[ true ]];do
	clear
	if [[ $intentos -eq 0 ]]; then
		read -n1 -p "Has agotado los intentos... "
		break
	fi
	echo -e "Usuario: $nombre"
	read -p "Indica la contraseña: " passwd
	
	if [[ $passwd == "superpassword" ]];then
		read -n1 -p "Contraseña correcta. Pulsa una tecla... "
		break
	fi
	intentos=$((intentos-1))
	echo "La contraseña no es correcta... "
	read -n1 -p "Te quedan $intentos intentos... "
done






#!/bin/bash

saludo(){
	nombre=$1
	echo -e "\nHOLA! $nombre"
}

sumar(){
	numero1=$1
	numero2=$2
	
	check $numero1
	retorno=$?
	
	if [[ $retorno -eq 0 ]]; then
		read -n1 -p "No es numero. Pulsa una tecla para volver al menu"
		return
	fi
	
	check $numero2
	retorno=$?
	
	if [[ $retorno -eq 0 ]]; then
		read -n1 -p "No es numero. Pulsa una tecla para volver al menu"
		return
	fi
	
	resultado=$((numero1+numero2))
	echo -e "\n El resultado es: $resultado "
	read -n1 -p "Pulsa una tecla para continuar..."
}

check(){
	numero=$1
	#comprobar si el numero es realmente un numero
	if [[ $numero =~ ^[0-9]+$ ]]; then
		return 1
	else
		return 0
	fi
}

while [[ true ]]; do
	clear
	echo -e "\n\n🔥🔥🚒 MENU 🚒🔥🔥\n"
	echo -e " 1.Saludar"
	echo -e " 2.Sumar"
	echo -e " 3.Salir\n"

	read -n1 -p "Elige una opción[1-3]: " opcion

	#echo "Has seleccionado la opción: $opcion"
	
	if [[ $opcion -eq 1 ]]; then
		read -p "Dime tu nombre: " nombre
		saludo $nombre
		read -n1 -p "Pulsa una tecla para continuar..."
	elif [[ $opcion -eq 2 ]]; then
		echo -e "\n"
		read -p "Indica el numero A: " numeroA
		read -p "Indica el numero B: " numeroB
		sumar $numeroA $numeroB
		
	elif [[ $opcion -eq 3 ]]; then
		echo -e "\n"
		read -n1 -p "Pulsa s si realmente quieres salir " opcion
		if [[ $opcion == 's' || $opcion == 'S' ]]; then
			break
		fi
	else
		read -n1 -p "Has seleccionado una opcion incorrecta"
	fi
	
done

clear
echo -e "\nGRACIAS POR USAR NUESTRA APP\n"



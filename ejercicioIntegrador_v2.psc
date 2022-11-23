Algoritmo ejercicioIntegrador
	definir muestra, matriz como caracter
	definir m, dimensionMatriz Como Entero
	
	
	//definir muestra 
	
	Escribir "Ingrese su muestra. Recuerde que debe tener solo A, B, C ó D en su interior y una longitud de 9, 16 ó 1369"
	muestra = "ACDDCADBCDABDBBA"
	
	
	Si longitud(muestra)=9 o longitud(muestra)=16 o longitud(muestra)=1369 Entonces
		Escribir " "
		Escribir "La muestra ingresada fue: ", " [ " , muestra , " ] " 
		
	SiNo
		Escribir "Ingrese una muestra de tamaño correcto"
	FinSi
	
	Escribir " "
	Escribir "Tu muestra tiene los caracteres que se necesitan? " validarcaracteres(muestra)
	Escribir "La longitud de tu muestra es: " longitud(muestra)
	Escribir "Entonces la cantidad de filas y de columnas de tu matriz es igual a: " raiz(longitud(muestra))
	Escribir " "
	
	m = raiz(longitud(muestra))
	
	dimension matriz(m,m)
	
	llenarmatriz(matriz,m,muestra)
	mostrarmatriz(matriz,m,muestra)
	
	Escribir " "
	Escribir "Tu diagonal principal 1 tiene todas las bases iguales " diagonalPrincipal1(matriz,m,muestra)
	Escribir "Tu diagonal principal 2 tiene todas las bases iguales "  diagonalPrincipal2(matriz,m,muestra)
	Escribir " "
	
	Si diagonalPrincipal1(matriz,m,muestra) y diagonalPrincipal2(matriz,m,muestra) Entonces
		Escribir "Felicitaciones, has detectado el gen Z!!"
	SiNo
		Escribir "Este no es el gen Z, sigue intentandolo!"
	FinSi
	
FinAlgoritmo

//Validad caracteres

Funcion resultado <- validarcaracteres(muestra)
	definir i, j Como Entero
	definir letra Como Caracter
	definir resultado Como Logico
	
	resultado = verdadero 
	
	Para i=0 hasta (longitud(muestra)-1) Hacer
		letra = subcadena(muestra,i,i)
		Si letra<>"A" y letra<>"B" y letra<>"C" y letra<>"D" Entonces
			resultado = Falso
			i = longitud(muestra)-1
		FinSi
	FinPara
FinFUncion


//LLenar matriz

SubProceso llenarMatriz(matriz,m, muestra) 
	definir i ,j , cont como entero 
	
	cont = 0
	
	para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			matriz(i,j) = Subcadena(muestra,cont,cont)
			cont= cont + 1
		FinPara
	FinPara
FinSubProceso

//Mostrar matriz

SubProceso mostrarMatriz(matriz,m,muestra)
	Definir i,j como entero 
	
	para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			Escribir sin saltar "[", matriz[i,j] , "]" , " " 
		FinPara
		Escribir " "
	FinPara
FinSubProceso

//Verificar diagonal Principal 1

SubProceso resultado<-diagonalPrincipal1(matriz,m,muestra)
	definir i, j Como Entero
	definir resultado como logico
	
	resultado = verdadero 
	
	Para i=0 hasta m-1 Hacer
		Para j=0 hasta m-1 Hacer
			Si i=j entonces
				Si matriz(i,i)=matriz(0,0) Entonces
					resultado = Verdadero
					i = m-1
				FinSi
			FinSi
		FinPara
	FinPara
	
FinSubProceso

//Verificar diagonal Principal 2

SubProceso resultado<-diagonalPrincipal2(matriz,m,muestra)
	definir i, j Como Entero
	definir resultado como logico
	
	resultado = verdadero 
	
	Para i=0 hasta m-1 Hacer
		Para j=0 hasta m-1 Hacer
			
			Si i=(m-1)-i y j=m-1 entonces
				si matriz[i,(m-1)-i] = matriz[0,m-1] Entonces
					resultado = Verdadero
					i= m-1
				FinSi
			FinSi
		FinPara
	FinPara
	
FinSubProceso
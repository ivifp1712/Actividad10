Algoritmo actividad10_estricto
	
	//Definicion de variables
	Definir nump, nasig, nnotas, i, u, z, primera como Entero
	Definir notas, tot, temp, media Como Real
	Definir persona, asignatura Como Caracter
	
	//Datos de la tabla
	
	nump = 3 
	nasig = 4
	
	// Arrays en base 0
	
	Dimension persona(nump)
	Dimension asignatura(nasig)
	Dimension tot(nump, nasig)
	
	// Datos de la tabla
	
	persona(0) <- "Juan"
	persona(1) <- "María"
	persona(2) <- "Luis"
	
	asignatura(0) <- "P"
	asignatura(1) <- "LM"
	asignatura(2) <- "SI"
	asignatura(3) <- "ED"
	
	tot(0,0) <- 7.95
	tot(0,1) <- 8.5
	tot(0,2) <- 4.95
	tot(0,3) <- 7.1
	
	tot(1,0) <- 6.52
	tot(1,1) <- 7.85
	tot(1,2) <- 3.5
	tot(1,3) <- 5.8
	
	tot(2,0) <- 2.75
	tot(2,1) <- 9.85
	tot(2,2) <- 6.84
	tot(2,3) <- 3.75
	
	//Muestra por consola las notas y las medias
	
	Escribir "---------NOTAS----------"
	
	Para i = 0 hasta nump - 1 Hacer
		Escribir "Alumno: ", persona(i)
		Para u = 0 Hasta nasig - 1 Hacer
			Escribir "Asignatura: ", asignatura(u)
			Escribir "    Nota ", tot(i, u)
			Escribir "    Nota redondeada ", redon(tot(i, u))
		FinPara
		Escribir "-------------------------"
	FinPara
	
	Escribir "----MEDIAS DE ALUMNOS----"
	Para i = 0 hasta nump - 1 Hacer
		Escribir "Alumno: ", persona(i)
		temp <- 0
		Para u = 0 Hasta nasig - 1 Hacer
			temp <- temp + tot(i, u) 
		FinPara
		media <- redon(temp/nasig)
		Escribir "    Nota media: ", media
		Escribir "-------------------------"
	FinPara
	
	Escribir "--MEDIAS DE ASIGNATURAS--"
	Para i = 0 hasta nasig - 1 Hacer
		Escribir "Asignatura: ", asignatura(i)
		temp <- 0
		Para u = 0 Hasta nump - 1 Hacer
			temp <- temp + tot(u, i) 
		FinPara
		media <- redon(temp/nump)
		Escribir "   Nota media: ", media
		Escribir "-------------------------"
	FinPara
	
FinAlgoritmo
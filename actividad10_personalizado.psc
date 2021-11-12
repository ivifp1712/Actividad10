Algoritmo actividad10_personalizado
	
	//ADVERTENCIA !!! 
	//Listas/Arrays en base 0
	
	//Definicion de variables
	Definir nump, nasig, nnotas, i, u, z, primera como Entero
	Definir notas, tot, temp, media Como Real
	Definir persona, asignatura Como Caracter
	
	//Pregunta de numeros de datos a introducir
	
	Escribir "¿Cuantas personas quieres introducir?"
	Leer nump
	Escribir "¿Cuantas asignaturas quieres almacenar?"
	Leer nasig
	
	// Arrays en base 0
	
	Dimension persona(nump)
	Dimension asignatura(nasig)
	Dimension tot(nump, nasig)
	
	primera = 0
	
	// Usario introduce los datos por persona, asignatura y nota
	
	Para i = 0 hasta nump - 1 Hacer
		Escribir "Nombre persona ", i + 1
		Leer persona(i)
		Para u = 0 Hasta nasig - 1 Hacer
			Si primera =0 Entonces
				Escribir "Nombre asignatura ", u + 1
				leer asignatura(u)
			FinSi
				Escribir "Asignatura: ", asignatura(u)
				Escribir "Nota: "
				Leer temp 
				tot(i, u) <- (redon(temp*100)/100)
		FinPara
		primera = 1
	FinPara
	
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

Algoritmo vectores_2
	Definir suma,media,notas Como Real;
	Definir i,opcion,cuantasnotas Como Entero;//cuantas seria el numero de notas que introduce el usuario
	Escribir "Programa que muesta la media de las notas y las que superan la media.";
	Repetir//este primer repetir es para darle la opcion al usuario de continuar o finalizar el programa
	//prueba modificacion git
		repetir
			Escribir "¿Cuantas notas desea calcular?";
			Leer cuantasnotas;
			dimension notas(cuantasnotas);
			si cuantasnotas<=0 Entonces
				Escribir "Opcion no valida.";
				Escribir "Vuelva a introducir cuantas notas desea calcular";
			FinSi
		Hasta Que cuantasnotas>0
			
		
		Escribir "Introduzca las notas a continuación.";
		suma<-0;//inicializo la variable en 0 y la meto despues del primer repetir y antes del para
		
		Para i<-0 Hasta cuantasnotas-1 Con Paso 1 Hacer//el para lo pongo desde el 0 al 9 porque en java es asi...
			Repetir//bucle para que no se introduzcan notas erroneas
				leer notas(i);
				si notas(i)<0 o notas(i)>10 Entonces//si es menor que 0 y mayor que 10 la nota es erronea
					Escribir "Nota no valida, vuelva a introducirla.";
				FinSi
			Hasta Que notas(i)>=0 y notas(i)<=10 
			suma<-suma+notas(i);//calculo la suma total
		FinPara
		
		media<-suma/cuantasnotas;//calculo la media
		Escribir "La media es ",media;
		
		Para i<-0 Hasta cuantasnotas-1 Con Paso 1 Hacer//este segundo para es para saber que notas estan por encima de la media
			si notas(i)>media Entonces
				Escribir notas(i)," esta por encima de la media.";
			FinSi
		FinPara
		
		Escribir "¿Desea volver a calcular las notas?";
		Escribir "1<-SI 0<-NO";
		Repetir//este repetir es para validar la opcion de si se desea continuar o no
			leer opcion;
			si opcion<>0 y opcion<>1 Entonces
				Escribir "Opcion no valida";
				Escribir "Vuelva a introducir la opcion";
			FinSi
		Hasta Que opcion=0 o opcion=1
		
	Hasta Que opcion=0
	Escribir "Fin del programa";
FinAlgoritmo

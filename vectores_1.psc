Algoritmo vectores_1
	Definir suma,media,nota Como Real;
	Definir i,opcion Como Entero;
	Dimension nota(10);
	Escribir "Programa que muesta la media de las notas y las que superan la media.";
	Repetir//este primer repetir es para darle la opcion al usuario de continuar o finalizar el programa
	
		Escribir "Introduzca las notas a continuación.";
		suma<-0;//inicializo la variable en 0 y la meto despues del primer repetir y antes del para
		Para i<-0 Hasta 9 Con Paso 1 Hacer//el para lo pongo desde el 0 al 9 porque en java es asi...
			Repetir//bucle para que no se introduzcan notas erroneas
				leer nota(i);
				si nota(i)<0 o nota(i)>10 Entonces//si es menor que 0 y mayor que 10 la nota es erronea
					Escribir "Nota no valida, vuelva a introducirla.";
				FinSi
			Hasta Que nota(i)>=0 y nota(i)<=10 
			suma<-suma+nota(i);//calculo la suma total
		FinPara
		
		media<-suma/10;//calculo la media
		Escribir "La media es ",media;
		
		Para i<-0 Hasta 9 Con Paso 1 Hacer//este segundo para es para saber que notas estan por encima de la media
			si nota(i)>media Entonces
				Escribir nota(i)," esta por encima de la media.";
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

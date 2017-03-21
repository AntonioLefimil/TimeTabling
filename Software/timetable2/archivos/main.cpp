#include "curso.hpp"
#include "sala.hpp"
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <string>
#include <stdlib.h>
#include <iostream>
#include <cstdlib>
#include <cstring>
#include <sstream>
#include <fstream>
#include <iostream>
#include <fstream>





#define 	MAXLINEA 	255
//#define 	MAXCAMPO	41
//#define 	TOPEVECTOR 	200

typedef int 	boool;
//typedef char 	str40[MAXCAMPO];
typedef char 	str_linea[MAXLINEA];



//*_________________________CURSO__________________________________*//
//*_________________________CURSO__________________________________*//
//*_________________________CURSO__________________________________*//
//*_________________________CURSO__________________________________*//
Lista_curso::Lista_curso() {
	inicio = NULL;
	fin = NULL;
	cantidad = 0;
}

Lista_curso::~Lista_curso() {
	while(!vacia_curso())
		pop_back_curso();
}

bool Lista_curso::vacia_curso() {
	return (inicio == NULL);
}

int Lista_curso::getCantidad_curso() {
	return cantidad;
}

nodo_curso* Lista_curso::primero_curso() {
	return inicio;
}

nodo_curso* Lista_curso::final_curso() {
  return fin;
}
// Se reciben parametros de una lista, el cual se coloca en un nuevo nodo y lo coloca al frente de la lista con los datos asignados..
void Lista_curso::push_front_curso(int cd_curso,int nrc,string nombrecurso,string profe,int cap_curso, string tiposala,string horario1,int periodo1,string horario2, int periodo2) {
	cantidad++;
	// Crear un nodo nuevo
	nodo_curso *aux = new nodo_curso(cd_curso,nrc,nombrecurso,profe,cap_curso,tiposala,horario1,periodo1,horario2,periodo2);
	aux->setSiguiente(inicio);
	inicio = aux;
}
// Se reciben parametros de una lista, el cual se coloca en un nuevo nodo y lo coloca al final de la lista con los datos asignados.
void Lista_curso::push_back_curso(int cd_curso,int nrc,string nombrecurso, string profe,int cap_curso, string tiposala,string horario1,int periodo1,string horario2, int periodo2) {
	cantidad++;
	// Crear un nodo nuevo
	nodo_curso *aux = new nodo_curso(cd_curso,nrc, nombrecurso,profe,cap_curso,tiposala,horario1,periodo1,horario2,periodo2);
	if(vacia_curso())
		inicio = aux;
	else
		fin->setSiguiente(aux);
	fin = aux;
}
//Saca un nodo de la lista el cual se encuentra al frente.
void Lista_curso::pop_front_curso() {
	if(!vacia_curso()) {
		cantidad--;
		if(inicio->getSiguiente() == NULL) {
			nodo_curso *aux = inicio;
			delete aux;
			inicio = fin = NULL;
		} else {
			nodo_curso *i = inicio;
			while(i->getSiguiente() != fin)
				i = i->getSiguiente();

			nodo_curso *aux = fin;
			fin = i;
			fin->setSiguiente(NULL);
			delete aux;
		}
	} else
		cout << "¡¡Lista curso vacía!!" << endl;
}
//Saca un nodo de la lista el cual se encuentra al último.
void Lista_curso::pop_back_curso() {
	if(!vacia_curso()) {
		cantidad--;
		if(inicio->getSiguiente() == NULL) {
			nodo_curso *aux = inicio;
			delete aux;
			inicio = fin = NULL;
		} else {
			nodo_curso *aux = inicio;
			inicio = inicio->getSiguiente();
			delete aux;
		}
	} else {
		cout << "¡¡Lista curso vacía!!" << endl;
	}
}
//Busca un nodo de la lista el cual contiene como parametro la información de un nodo.
bool Lista_curso::search_curso(int n) {
	if(!vacia_curso()) {
		nodo_curso *i = inicio;
		while(i != NULL && i->getCodigo() != n)
			i = i->getSiguiente();

		if(i == NULL)
			return false;
		else
			return true;
	}
	else
	return false;
}

//Muestra por pamtalla lo que contiene la lista curso.
void Lista_curso::imprimir_curso() {
	if(!vacia_curso()) {
		nodo_curso *indice = inicio;
		int Terminar = 0 ;

		while( Terminar == 0 ) {
			cout << indice->getCodigo() << " / " << indice->getNrc() << " / " << indice->getNomCurso() << " / " << indice->getProfe() << " / " << indice->getCapcurso() << " / " << indice->getTipocurso() << " / " ;
			cout << indice->gethorario1() << " / " << indice->getperiodo1() << " / " << indice->gethorario2() << " / " << indice->getperiodo2() << endl ;
		    if ( fin != indice ) {
                indice = indice->getSiguiente() ;
            }
            else { Terminar = 1 ;
            }
		}
	}
}
//Muestra por pantalla si el archivo curso se abrio correctamente.
void Verificar_apertura_archivo_curso(FILE *Curso){

    if(Curso==NULL)
	{
		cout<<"No se pudo abrir el Archivo Cursos.\n";
	}
		else
		{
			//cout<<"El Archivo Curso se abrio correctamente.\n\n";
		}
    }
//Traspasa la información del archivo curso.csv a la lista curso.
Lista_curso Asignar_Valores_Curso(FILE *Curso, Lista_curso *datos_curso ){

    str_linea 	linea;
    char *curso;
    int i=0;
    int codigo_curso;
    int NRC;
    char *nombrecurso;
    char *profesor;
    int capacidad_curso;
    char *tipo_sala_a_necesitar;
    char *HORARIO1;
    int periodo1;
    char *HORARIO2;
    int periodo2;
cout<<"hola"<<endl;

    fgets(linea,MAXLINEA,Curso);
    while (!feof(Curso))
    {
        fgets(linea,MAXLINEA,Curso);
        if(strlen(linea) != 0 ) {
        curso = strtok(linea,";");
        codigo_curso = std::atoi(curso);
        curso = strtok(NULL,";");
        NRC = std::atoi(curso);
        curso = strtok(NULL,";");
        nombrecurso = curso;
        std::string nombrecurso1(nombrecurso);
        curso = strtok(NULL,";");
        profesor = curso;
        std::string profesor1(profesor);
        curso = strtok(NULL,";");
        capacidad_curso = std::atoi(curso);
        curso = strtok(NULL,";");
        tipo_sala_a_necesitar = curso;
        std::string tipo_sala_a_necesitar1(tipo_sala_a_necesitar);
        curso = strtok(NULL,";");
        HORARIO1 = curso;
        std::string horario1(HORARIO1);
        curso = strtok(NULL,";");
        periodo1 = std::atoi(curso);
        curso = strtok(NULL,";");
        HORARIO2 = curso;
        std::string horario2(HORARIO2);
        curso = strtok(NULL,"\n");
        periodo2 = std::atoi(curso);

        datos_curso->push_back_curso(codigo_curso,NRC,nombrecurso1,profesor1,capacidad_curso,tipo_sala_a_necesitar1,horario1,periodo1,horario2,periodo2);
        i++;
        }
    }
    return *datos_curso;
}
//Verifica que el archivo curso se cerro correctamente
void Cierre_Archivo_curso(FILE *Curso){
    if( !fclose(Curso) )
      printf( "Archivo curso cerrado\n" );
   else
   {
      printf( "Error: Archivo Curso NO CERRADO\n" );
   }
    }
//*_________________________SALA__________________________________*//
//*_________________________SALA__________________________________*//
//*_________________________SALA__________________________________*//
//*_________________________SALA__________________________________*//
//*_________________________SALA__________________________________*//


Lista_sala::Lista_sala() {
	inicio = NULL;
	fin = NULL;
	cantidad = 0;
}

Lista_sala::~Lista_sala() {
	while(!vacia_sala())
		pop_back_sala();
}

bool Lista_sala::vacia_sala() {
	return (inicio == NULL);
}

int Lista_sala::getCantidad_sala() {
	return cantidad;
}

nodo_sala* Lista_sala::primero_sala() {
	return inicio;
}

nodo_sala* Lista_sala::final_sala() {
  return fin;
}
//Coloca un nuevo nodo al frente de lista sala.
void Lista_sala::push_front_sala(int cd_sala, int cap_sala,string edificio,int numerosala, string tiposala) {
	cantidad++;
	// Crear un nodo nuevo
	nodo_sala *aux = new nodo_sala(cd_sala,cap_sala,edificio,numerosala,tiposala);
	aux->setSiguiente(inicio);
	inicio = aux;
}
//Coloca un nuevo nodo al final de lista sala.
void Lista_sala::push_back_sala(int cd_sala, int cap_sala,string edificio,int numerosala, string tiposala) {
	cantidad++;
	// Crear un nodo nuevo
	nodo_sala *aux = new nodo_sala(cd_sala,cap_sala,edificio,numerosala,tiposala);
	if(vacia_sala())
		inicio = aux;
	else
		fin->setSiguiente(aux);
	fin = aux;
}
//Saca un nodo de la lista sala que se encuentra al frente.
void Lista_sala::pop_front_sala() {
	if(!vacia_sala()) {
		cantidad--;
		if(inicio->getSiguiente() == NULL) {
			nodo_sala *aux = inicio;
			delete aux;
			inicio = fin = NULL;
		} else {
			nodo_sala *i = inicio;
			while(i->getSiguiente() != fin)
				i = i->getSiguiente();

			nodo_sala *aux = fin;
			fin = i;
			fin->setSiguiente(NULL);
			delete aux;
		}
	} else
		cout << "¡¡Lista sala vacía!!" << endl;
}
//Saca un nodo de la lista sala que se encuentra al final.
void Lista_sala::pop_back_sala() {
	if(!vacia_sala()) {
		cantidad--;
		if(inicio->getSiguiente() == NULL) {
			nodo_sala *aux = inicio;
			delete aux;
			inicio = fin = NULL;
		} else {
			nodo_sala *aux = inicio;
			inicio = inicio->getSiguiente();
			delete aux;
		}
	} else {
		cout << "¡¡Lista sala vacía!!" << endl;
	}
}
//Busca en la lista sala una sala con el parametro n.
bool Lista_sala::search_sala(int n) {
	if(!vacia_sala()) {
		nodo_sala *i = inicio;
		while(i != NULL && i->getCodsala() != n)
			i = i->getSiguiente();

		if(i == NULL)
			return false;
		else
			return true;
	}
	else
	return false;
}


//Muestra or pantalla lo que contiene la lista sala.
void Lista_sala::imprimir_sala() {
	if(!vacia_sala()) {
		nodo_sala *i = inicio;
		while(i != NULL) {
			cout << i->getCodsala() << " ";
			cout << i->getCapsala() << " ";
			cout <<i->getEdificio()<<" ";
			cout <<i->getNumerosala()<<" ";
			cout << i->getTiposala() << endl;
			i = i->getSiguiente();
		}
	}
}
//Verifica que el archivo sala se abrio correctamente.
void Verificar_apertura_archivo_sala(FILE *Sala){


    if(Sala==NULL)
	{
		cout<<"No se pudo abrir el Archivo Sala.\n";
	}
		else
		{
			//cout<<"El Archivo Sala se abrio correctamente.\n\n";
		}
    }
//Asigna los valores del archivo salas a las lista sala dentro del sistema.
Lista_sala Asignar_Valores_Sala(FILE *Sala, Lista_sala *datos_sala){

    str_linea 	lineasala;
    char *sala;
    char *edificio;
    int i=0;
    int numerosala;
    int codigo_sala;
    int capacidad_sala;
    char *tipo_sala;

    fgets(lineasala,MAXLINEA,Sala);
    while (!feof(Sala))
    {
        fgets(lineasala,MAXLINEA,Sala);

        sala = strtok(lineasala,";");
        codigo_sala = std::atoi(sala);

        sala = strtok(NULL,";");
        capacidad_sala = std::atoi(sala);

        sala = strtok(NULL,";");
        edificio = sala;
        std::string edificio1(edificio);

        sala = strtok(NULL,";");
        numerosala = std::atoi(sala);

        sala = strtok(NULL,"\n");
        tipo_sala = sala;
        std::string tipo_sala1(tipo_sala);

        datos_sala->push_back_sala(codigo_sala,capacidad_sala,edificio1,numerosala,tipo_sala1);

        i++;
    }
   return *datos_sala;
}
//Verifica que el cierre del archivo sala se realizo correctamente.
void Cierre_Archivo_sala(FILE *Sala){
    if( !fclose(Sala) )
      printf( "Archivo sala cerrado\n" );
   else
   {
      printf( "Error: Archivo sala NO CERRADO\n" );
   }
}


//Asigna salas a los cursos
 void Asignacion_horaria(Lista_curso lista_curso,Lista_sala lista_sala){

    std::string tipocurso,tiposala,profesor,dia1,dia2,codigosala1,nombrecurso,horariodias,horariodCursosNoAsignados,cursossala,edificiosala;
    int capcurso,nrc,capsala,codigo_curso,codigosala,periodo1,periodo2, numerosala;
    bool asignado=false;
    bool asignado1=false;
    char buffer[10];
    char *numerosalchar;
    char *edificio;
    char nombrecompleto[50];
    int x, cantidadsalas, salas, dia, periodo ;
    cantidadsalas = lista_sala.getCantidad_sala() ;
    string sala [cantidadsalas][6][10];
    printf("cantidad salas= %u\n",cantidadsalas) ;

    std::ofstream cursosnoasignados("C:\\wamp\\www\\Software\\asignaciones\\cursosnoasignados.csv",ios::out);
    horariodCursosNoAsignados="Código;NRC;NombreCurso;Profesor;Capacidad;Tipo sala;Horario1;Periodo1;Horario2;Periodo2";

    std::ofstream cursossalas("C:\\wamp\\www\\Software\\asignaciones\\cursossalas.csv",ios::out);
    cursossala="Código;NRC;NombreCurso;Profesor;edificio;numerosala";

    cursossalas<<cursossala<<endl;
    cursosnoasignados<<horariodCursosNoAsignados<<endl;




//cout<<cursos_no_asignados<<endl;

    for(salas=0;salas<cantidadsalas;salas++){
        for(dia=0;dia<6;dia++){
            for(periodo=0;periodo<10;periodo++){
                sala[salas][dia][periodo] = "disponible" ; //cout << "salas = "<<salas<<" dia = "<<dia<<" periodo = "<<periodo<<" "<< sala[salas][dia][periodo]<<endl;
            }
        }
    }
    if(lista_curso.vacia_curso()!= true && lista_sala.vacia_sala() != true){
            nodo_curso *i = lista_curso.inicio;
            while(i != NULL){
                tipocurso = i->getTipocurso();
                capcurso = i->getCapcurso();  cout << " \n Nuevo Curso TipCur=" << tipocurso << " CapCur=" << capcurso << endl;
                nrc = i->getNrc();
                x = 0 ;
                asignado = false ;
                asignado1 = false;
                nodo_sala *j = lista_sala.inicio ;
                while( ( j != NULL ) && ( asignado == false )&& ( asignado1 == false ) ) {
                    tiposala = j->getTiposala();
                    capsala = j->getCapsala();
                    codigosala = j->getCodsala();                   cout <<"x = "<< x << " TipSal=" << tiposala << " CapSal=" << capsala << endl;

                    edificiosala = j->getEdificio();
                    numerosala = j->getNumerosala();

                    edificio = strdup(edificiosala.c_str());
                    numerosalchar = itoa(numerosala,buffer,10);

cout << tipocurso.compare(tiposala)<<endl ;
//system ("pause") ;
                    if( ( tipocurso.compare(tiposala) == 0 ) && ( capcurso <= capsala ) ) {
                        dia1=i->gethorario1();
                        dia2=i->gethorario2();
                        periodo1 = i->getperiodo1();
                        periodo2 = i->getperiodo2();
                        profesor = i->getProfe();
                        codigo_curso = i->getCodigo();
                        nombrecurso = i->getNomCurso();
cout << " Dia1=" << dia1 <<" Periodo1= "<<periodo1<<  "CodSal=" <<codigosala<< endl ;
cout << " Dia2=" << dia2 <<" Periodo2= "<<periodo2<< endl ;
cout << " Prof=" << profesor << " CodCur=" << codigo_curso << endl;
                        if( ( !(dia1.compare("lunes") ) ) && ( sala[x][0][periodo1-1] == "disponible" ) ) {
                            sala[x][0][periodo1-1] = profesor +" "+ nombrecurso  ; cout<<sala[x][0][periodo1-1]<<endl;
                            asignado = true;                           cout <<"... Pase por el dia lunes"<<endl;
                        }
                        if( ( !(dia1.compare("martes") ) ) && ( sala[x][1][periodo1-1]=="disponible" ) ) {
                            sala[x][1][periodo1-1]=profesor +" " + nombrecurso ; cout<<sala[x][1][periodo1-1]<<endl;
                            asignado =true;                            cout<<"pase martes"<<endl;
                        }
                        if ( ( !(dia1.compare("miercoles") ) ) && ( sala[x][2][periodo1-1]=="disponible" ) ) {
                            sala[x][2][periodo1-1]=profesor + " " + nombrecurso ; cout<<sala[x][2][periodo1-1]<<endl;
                            asignado =true;                            cout<<"pase miercoles"<<endl;
                        }
                        if ( ( !(dia1.compare("jueves") ) ) && ( sala[x][3][periodo1-1]=="disponible" ) ) {
                            sala[x][3][periodo1-1]=profesor + " " + nombrecurso ; cout<<sala[x][3][periodo1-1]<<endl;
                            asignado =true;                            cout<<"pase jueves"<<endl;
                        }
                        if ( ( !(dia1.compare("viernes" ) ) ) && ( sala[x][4][periodo1-1] == "disponible" ) ) {
                            sala[x][4][periodo1-1]=profesor + " " + nombrecurso ;  cout<<sala[x][4][periodo1-1]<<endl;
                            asignado =true;                            cout<<"pase viernes"<<endl;
                        }
                        if ( ( !(dia1.compare("sabado" ) ) ) && ( sala[x][5][periodo1-1] == "disponible" ) ) {
                            sala[x][5][periodo1-1]=profesor + " " + nombrecurso ;  cout<<sala[x][5][periodo1-1]<<endl;
                            asignado =true;                            cout<<"pase sabado"<<endl;
                        }

                        if(asignado==true){

                            if( ( !(dia2.compare("lunes") ) ) && ( sala[x][0][periodo2-1] == "disponible" ) ) {
                                sala[x][0][periodo2-1] = profesor +" "+ nombrecurso  ;
                                asignado1 = true;                           cout <<"... Pase por el dia lunes"<<endl;
                            }
                            if( ( !(dia2.compare("martes") ) ) && ( sala[x][1][periodo2-1]=="disponible" ) ) {
                                sala[x][1][periodo2-1]=profesor +" " + nombrecurso ;
                                asignado1 =true;                            cout<<"pase martes"<<endl;
                            }
                            if ( ( !(dia2.compare("miercoles") ) ) && ( sala[x][2][periodo2-1]=="disponible" ) ) {
                                sala[x][2][periodo2-1]=profesor + " " + nombrecurso ;
                                asignado1 =true;                            cout<<"pase miercoles"<<endl;
                            }
                            if ( ( !(dia2.compare("jueves") ) ) && ( sala[x][3][periodo2-1]=="disponible" ) ) {
                                sala[x][3][periodo2-1]=profesor + " " + nombrecurso ;
                                asignado1 =true;                            cout<<"pase jueves"<<endl;
                            }
                            if ( ( !(dia2.compare("viernes" ) ) ) && ( sala[x][4][periodo2-1] == "disponible" ) ) {
                                sala[x][4][periodo2-1]=profesor + " " + nombrecurso ;
                                asignado1 =true;                            cout<<"pase viernes"<<endl;
                            }
                            if ( ( !(dia2.compare("sabado" ) ) ) && ( sala[x][5][periodo2-1] == "disponible" ) ) {
                                sala[x][5][periodo2-1]=profesor + " " + nombrecurso ;
                                asignado1 =true;                            cout<<"pase sabado"<<endl;
                            }
                            if((asignado1==false)&&(asignado==true)){
                                sala[x][0][periodo1] = "disponible"  ;
                                sala[x][1][periodo1] = "disponible"  ;
                                sala[x][2][periodo1] = "disponible"  ;
                                sala[x][3][periodo1] = "disponible"  ;
                                sala[x][4][periodo1] = "disponible"  ;
                                sala[x][5][periodo1] = "disponible"  ;
                                asignado = false;
                            }
                        }
                        if( (asignado == false )&&(asignado1 == false )){
                            j = j->getSiguiente() ;
                            x++ ;
                        }
                        if((asignado==true)&&(asignado1==true)){

                            cursossalas<<codigo_curso<<";"<<nrc<<";"<<nombrecurso<<";"<<profesor<<";"<<edificiosala<<";"<<numerosala<<endl;
                        }
                    }
                    else{

                        j = j->getSiguiente() ; x++ ;                       cout<<"Tipo Sala Distinto o No Hay Capcidad!!!" << endl;
                    }

                }
                if((asignado1==false)&&(asignado==false)){
                   cursosnoasignados<<codigo_curso<<";"<<nrc<<";"<<nombrecurso<<";"<<profesor<<";"<<capcurso<<";"<<tipocurso<<";"<<dia1<<";"<<periodo1<<";"<<dia2<<";"<<periodo2<<endl;
                }
                                                                                cout<<"Salio de While Salas"<<endl;

                i = i->getSiguiente();
                                                                           cout<<"Final de while cursos"<<endl;
            }                                                               cout<<"asignacion completa"<<endl<<endl;
    }

    nodo_sala *j = lista_sala.inicio;

    for(salas=0;salas<cantidadsalas;salas++){
        nombrecompleto[0]=NULL;





        strcat(nombrecompleto,"C:\\wamp\\www\\Software\\asignaciones\\");
//cout<<nombrecompleto<<endl;
//system("pause");
        edificiosala = j->getEdificio();
        numerosala = j->getNumerosala();

        edificio = strdup(edificiosala.c_str());
        numerosalchar = itoa(numerosala,buffer,10);

        strcat(nombrecompleto,edificio);
        strcat(nombrecompleto,"-");
        strcat(nombrecompleto,numerosalchar);
        strcat(nombrecompleto,".csv");
//cout<<nombrecompleto<<endl;


        ofstream archivo_salida(nombrecompleto);
        horariodias="lunes;martes;miercoles;jueves;viernes;sabado";
        archivo_salida<< horariodias <<endl;

        for(periodo=0;periodo<10;periodo++){
            //cout << "salas = "<<salas<<" dia = "<<dia<<" periodo = "<<periodo<<" "<< sala[salas][dia][periodo]<<endl;
            archivo_salida<<sala[salas][0][periodo]<<";"<<sala[salas][1][periodo]<<";"<<sala[salas][2][periodo]<<";"<<sala[salas][3][periodo]<<";"<<sala[salas][4][periodo]<<";"<<sala[salas][5][periodo]<<";"<<endl;
        }
        archivo_salida.close();
        j = j->getSiguiente() ;
        //system("pause");
    }

}

int main(int argc, char *argv[]) {
	Lista_curso *lista_curso = new Lista_curso ();
	Lista_sala *lista_sala = new Lista_sala ();

    FILE *Curso;
    FILE *Sala;

    Curso=fopen("C:\\wamp\\www\\Software\\timetable2\\archivos\\Cursos.csv","rt");
    Sala=fopen("C:\\wamp\\www\\Software\\timetable2\\archivos\\Salas.csv","rt");

    Verificar_apertura_archivo_curso(Curso);
    Verificar_apertura_archivo_sala(Sala);

    //(Asignar_Valores_Curso(Curso,lista_curso).imprimir_curso());
    //(Asignar_Valores_Sala(Sala,lista_sala).imprimir_sala());

    Asignacion_horaria(Asignar_Valores_Curso(Curso,lista_curso),Asignar_Valores_Sala(Sala, lista_sala));

    Cierre_Archivo_curso(Curso);
    Cierre_Archivo_sala(Sala);


    //system("pause");
	//return 0;
}

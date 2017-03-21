
#include <iostream>

#ifndef _LIST_H_
#define _LIST_H_

using namespace std;

class nodo_curso{
	private:
		int codigo_curso;
		int NRC;
		string nombre_curso;
		string profesor;
		int capacidad_curso;
		string tipo_sala_a_necesitar;
		string HORARIO1;
		int periodo1;
		string HORARIO2;
		int periodo2;
		nodo_curso *siguiente;
	public:
		nodo_curso(int cd_curso,int nrc,string nombrecurso,string profe,int cap_curso, string tiposala,string horario1,int periodo11,string horario2,int periodo22) {
		    codigo_curso = cd_curso;
		    NRC = nrc;
		    nombre_curso = nombrecurso;
		    profesor  = profe;
		    capacidad_curso = cap_curso;
		    tipo_sala_a_necesitar = tiposala;
		    HORARIO1 = horario1;
		    periodo1 = periodo11;
		    HORARIO2 = horario2;
		    periodo2 = periodo22;
		    };

		virtual ~nodo_curso() {};
		int getCodigo() { return (codigo_curso); }
		int getNrc() { return (NRC); }
		string getNomCurso() { return (nombre_curso); }
		string getProfe() { return (profesor); }
		int getCapcurso() { return (capacidad_curso); }
		string getTipocurso() { return (tipo_sala_a_necesitar); }
		string gethorario1() { return (HORARIO1); }
		int getperiodo1(){ return (periodo1);}
		string gethorario2() { return (HORARIO2); }
		int getperiodo2(){ return (periodo2);}
		nodo_curso *getSiguiente() { return (siguiente); };
		void setSiguiente(nodo_curso *sig) { siguiente = sig; };
};

class Lista_curso {
	public:
		nodo_curso *inicio;
		nodo_curso *fin;
		int cantidad;
	public:
		Lista_curso();
		virtual ~Lista_curso();
		int getCantidad_curso();
		bool vacia_curso();
		void push_front_curso(int cd_curso, int nrc,string nombrecurso, string profe, int cap_curso, string tiposala, string horario1,int periodo1, string horario2,int periodo2);
		void push_back_curso(int cd_curso, int nrc,string nombrecurso, string profe, int cap_curso, string tiposala, string horario1,int periodo1, string horario2,int periodo2);
		void pop_front_curso();
		void pop_back_curso();
		bool search_curso(int n);
		void imprimir_curso();
		Lista_curso Asignar_Valores_Curso(FILE *Curso, Lista_curso lista_curso);
		void Cierre_Archivo_curso(FILE *Curso);
		nodo_curso* primero_curso();
		nodo_curso* final_curso();
};
#endif /* _LIST_H_ */


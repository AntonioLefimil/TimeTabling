#include <iostream>

#ifndef _LIST_H_sala
#define _LIST_H_sala

using namespace std;

class nodo_sala{
	private:

		int codigo_sala;
		int capacidad_sala;
		string edificio;
		int numerosala;
		string tipo_sala;
		nodo_sala *siguiente;
	public:
		nodo_sala( int cd_sala, int cap_sala, string edificio1, int numerodesala, string tiposala) {

		    codigo_sala= cd_sala;
		    capacidad_sala= cap_sala;
		    edificio = edificio1;
		    numerosala = numerodesala;
		    tipo_sala=tiposala;
		    };

		virtual ~nodo_sala() {};

		int getCodsala() { return (codigo_sala); }
		int getCapsala() { return (capacidad_sala); }
		string getEdificio() { return (edificio); }
		int getNumerosala() { return (numerosala); }
		string getTiposala() { return (tipo_sala); }
		nodo_sala *getSiguiente() { return (siguiente); };
		void setSiguiente(nodo_sala *sig) { siguiente = sig;};
};

class Lista_sala{
	public:
		nodo_sala *inicio;
		nodo_sala *fin;
		int cantidad;
	public:
		Lista_sala();
		virtual ~Lista_sala();
		int getCantidad_sala();
		bool vacia_sala();
		void push_front_sala( int cd_sala, int cap_sala,string edificio,int  numerosala, string tiposala);
		void push_back_sala( int cd_sala, int cap_sala,string edificio,int  numerosala, string tiposala);
		void pop_front_sala();
		void pop_back_sala();
		bool search_sala(int n);
		void imprimir_sala();
		Lista_sala Asignar_Valores_Sala(FILE *Sala,Lista_sala lista_sala );
		void Cierre_Archivo_sala(FILE *Sala);
		int contar_salas(Lista_sala lista_sala);
		nodo_sala* primero_sala();
		nodo_sala* final_sala();
};
#endif /* _LIST_H_ */

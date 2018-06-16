suma(Numero, OtroNumero, Total):- 
             numero(OtroNumero), 
			 numero(Numero),
             Total is Numero + OtroNumero.

numero(Num):- between(1,15, Num).

%nacio(persona, fechaNacimiento)%
nacio(juan, fecha(03, 07, 2001)).
nacio(mario, fecha(02, 05, 1999)).
nacio(ana, fecha(02, 05, 2001)).
nacio(pedro, fecha(06, 07, 2000)).
nacio(alicia, fecha(06, 07, 2000)).
nacio(julio, fecha(02, 05, 2001)).

nacieronMismaFecha(Persona, OtraPersona):-
		nacio(Persona, Fecha), 
		nacio(OtraPersona, Fecha), 
		Persona \= OtraPersona.

cumplenElMismoDia(Persona, OtraPersona):-
		nacio(Persona, fecha(D, M, _)), 
		nacio(OtraPersona, fecha(D, M, _)), 
		Persona \= OtraPersona.
		
transporte(juan, camina).
transporte(marcela, subte(a)).
transporte(marcela, subte(e)).
transporte(pepe, colectivo(160, d)).
transporte(pepe, subte(h)).
transporte(elena, colectivo(76)).
transporte(ana, auto(fiesta, ford, 2014)).
transporte(ana, auto(500, fiat, 2014)).
transporte(maria, auto(500, fiat, 2015)).
transporte(maria, colectivo(56)).
manejaLento(manuel).
manejaLento(ana).

tardaMucho(Persona):-transporte(Persona, camina).
tardaMucho(Persona):-
     transporte(Persona, auto(_, _, _)),
	 manejaLento(Persona).

viajaEnColectivo(Persona):- 
	transporte(Persona, MedioTransporte), 
	esColectivo(MedioTransporte).

esColectivo(colectivo(_, _)).
esColectivo(colectivo(_)).


viajanSiempreMismoMedio(Persona):-
		transporte(Persona, Transporte), 
forall(transporte(Persona, OtroTransporte), 
 mismoTransporte(Transporte, OtroTransporte)).
	
mismoTransporte(camina, camina).
mismoTransporte(auto(_, _, _), auto(_, _, _)).
mismoTransporte(subte(_), subte(_)).
mismoTransporte(Colectivo, OtroColectivo):-
		esColectivo(Colectivo), 
		esColectivo(OtroColectivo).
		
	


		
		
		
		

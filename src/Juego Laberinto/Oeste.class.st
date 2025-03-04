"
Oritentacion oeste

"
Class {
	#name : 'Oeste',
	#superclass : 'Orientacion',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion orientaciones' }
Oeste >> caminar:unBicho [ 
|pos|
pos :=unBicho posicion .
pos oeste entrar:unBicho .
]

{ #category : 'gestion orientaciones' }
Oeste >> obtenerElementoOrEn:unContenedor [ 
 ^unContenedor oeste .
]

{ #category : 'gestion orientaciones' }
Oeste >> ponerElemento:unEm en:unContenedor [
  unContenedor oeste:unEm.
]

{ #category : 'recorrido' }
Oeste >> recorrer: unBloque contenedor:unContenedor [
unContenedor oeste recorrer:unBloque.
]

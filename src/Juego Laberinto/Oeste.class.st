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
Oeste >> obtenerElementoOr: unContenedor [
^unContenedor oeste.
]

{ #category : 'gestion orientaciones' }
Oeste >> ponerElemento:unEm en:unContenedor [
  unContenedor oeste:unEm.
]

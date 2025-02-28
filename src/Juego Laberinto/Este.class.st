"
Orientacion este

"
Class {
	#name : 'Este',
	#superclass : 'Orientacion',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion orientaciones' }
Este >> obtenerElementoOr: unContenedor [
^unContenedor este.

]

{ #category : 'gestion orientaciones' }
Este >> ponerElemento:unEm en:unContenedor [
  unContenedor este:unEm.
]

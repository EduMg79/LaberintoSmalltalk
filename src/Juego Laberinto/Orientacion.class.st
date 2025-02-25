"
Interfaz para orientaciones

"
Class {
	#name : 'Orientacion',
	#superclass : 'Object',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion orientaciones' }
Orientacion >> obtenerElementoOrEn:unContenedor [ 
 ^unContenedor subclassResponsibility .
]

{ #category : 'as yet unclassified' }
Orientacion >> ponerElemento:unEM en:unContenedor [
	self subclassResponsibility.
]

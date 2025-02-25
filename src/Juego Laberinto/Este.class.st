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
Este >> obtenerElementoOrEn: unaOr [
^unaOr obtenerElementoOrEn: self.

]

{ #category : 'as yet unclassified' }
Este >> ponerElemento:unEm en:unContenedor [
  unContenedor este:unEm.
]

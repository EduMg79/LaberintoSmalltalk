"
Orientacion norte

"
Class {
	#name : 'Norte',
	#superclass : 'Orientacion',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion orientaciones' }
Norte >> obtenerElementoOr: unContenedor [
^unContenedor norte .
]

{ #category : 'gestion orientaciones' }
Norte >> ponerElemento:unEm en:unContenedor [
  unContenedor norte:unEm.
]

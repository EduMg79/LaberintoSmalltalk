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
Orientacion >> ponerElemento:unEM en:unContenedor [
	self subclassResponsibility.
]

{ #category : 'recorrido' }
Orientacion >> recorrer: unBloque contenedor:unContenedor [
self subclassResponsibility .
]

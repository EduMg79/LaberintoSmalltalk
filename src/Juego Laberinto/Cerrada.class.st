Class {
	#name : 'Cerrada',
	#superclass : 'EstadoPuerta',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Cerrada >> abrir:unaPuerta [ 
	Transcript show: 'Puerta abierta';cr.
	unaPuerta estado:Abierta new.
]

{ #category : 'as yet unclassified' }
Cerrada >> cerrar:unaPuerta [
]

{ #category : 'as yet unclassified' }
Cerrada >> entrar:alguien puerta:unaPuerta [ 
	Transcript show:alguien printString; nextPutAll: ' se choca con la puerta porque esta cerrada';cr.
]

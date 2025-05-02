Class {
	#name : 'Armario',
	#superclass : 'Contenedor',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Armario >> esArmario [ 
 ^true.
]

{ #category : 'as yet unclassified' }
Armario >> visitarContenedor:unVisitor [
 unVisitor visitarArmario:self.
]

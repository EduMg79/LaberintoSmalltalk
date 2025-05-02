Class {
	#name : 'Tunel',
	#superclass : 'Hoja',
	#instVars : [
		'laberinto'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Tunel >> aceptar:unVisitor [
unVisitor visitarTunel:self.
]

{ #category : 'entrar' }
Tunel >> entrar:alguien [

self laberinto ifNil: [  
	alguien crearNuevoLaberinto: self.
] ifNotNil: [ 
Transcript show: alguien printString ; nextPutAll: 'entra en un nuevo Laberinto';cr.
self laberinto entrar: alguien].
]

{ #category : 'accessing' }
Tunel >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
Tunel >> laberinto: anObject [

	laberinto := anObject
]

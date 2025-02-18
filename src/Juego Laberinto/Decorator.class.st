"
clase para gestionar las bombas
"
Class {
	#name : 'Decorator',
	#superclass : 'ElementoMapa',
	#instVars : [
		'em'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'accessing' }
Decorator >> em [

	^ em
]

{ #category : 'accessing' }
Decorator >> em: anObject [

	em := anObject
]

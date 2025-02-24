"
clase principal 
"
Class {
	#name : 'ElementoMapa',
	#superclass : 'Object',
	#instVars : [
		'padre'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'entrar' }
ElementoMapa >> entrar [
 Transcript show: 'Te has chocado contra una pared'
]

{ #category : 'accessing' }
ElementoMapa >> padre [

	^ padre
]

{ #category : 'accessing' }
ElementoMapa >> padre: anObject [

	padre := anObject
]

Class {
	#name : 'Personaje',
	#superclass : 'Ente',
	#instVars : [
		'nombre'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'accessing' }
Personaje >> nombre [

	^ nombre
]

{ #category : 'accessing' }
Personaje >> nombre: anObject [

	nombre := anObject
]

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

{ #category : 'entrar' }
Tunel >> entrar:alguien [
 "el personaje crea un laberinto y alguien intenta entrar con el".
]

{ #category : 'accessing' }
Tunel >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
Tunel >> laberinto: anObject [

	laberinto := anObject
]

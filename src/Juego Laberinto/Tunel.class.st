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
      self laberinto: alguien clonarLaberinto.
self laberinto entrar: alguien.
]

{ #category : 'accessing' }
Tunel >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
Tunel >> laberinto: anObject [

	laberinto := anObject
]

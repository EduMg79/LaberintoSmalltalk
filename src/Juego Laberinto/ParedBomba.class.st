"
Clase de Paredes Bomba
"
Class {
	#name : 'ParedBomba',
	#superclass : 'Pared',
	#instVars : [
		'activa'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'accessing' }
ParedBomba >> activa [

	^ activa
]

{ #category : 'accessing' }
ParedBomba >> activa: anObject [

	activa := anObject
]

{ #category : 'entrar' }
ParedBomba >> entrar [
 Transcript show: 'Te has chocado con una pared bomba';cr.
	
]

{ #category : 'initialize' }
ParedBomba >> initialize [ 
activa:=false
]

"
Clase bomba que actua como decorador
"
Class {
	#name : 'Bomba',
	#superclass : 'Decorator',
	#instVars : [
		'activa'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'accessing' }
Bomba >> activa [

	^ activa
]

{ #category : 'accessing' }
Bomba >> activa: anObject [

	activa := anObject
]

{ #category : 'accessing' }
Bomba >> entrar [
self activa ifTrue: [Transcript show: 'Te has chocado con una bomba'; cr]
         ifFalse: [self em entrar].

]

{ #category : 'initialization' }
Bomba >> initialize [ 
 activa:=false.
]

{ #category : 'accessing' }
Bomba >> self [ activa ifTrue: [Transcript show: 'Te has chocado con una bomba'; cr]
         ifFalse: [self em entrar].

]

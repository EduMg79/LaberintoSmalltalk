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
Bomba >> entrar:alguien [
self activa ifTrue: [Transcript show: alguien printString ; nextPutAll: 'Sa  chocado con una bomba'; cr]
         ifFalse: [self em entrar:alguien].

]

{ #category : 'initialization' }
Bomba >> initialize [ 
 activa:=false.
]

{ #category : 'accessing' }
Bomba >> self [ activa ifTrue: [Transcript show: 'Te has chocado con una bomba'; cr]
         ifFalse: [self em entrar].

]

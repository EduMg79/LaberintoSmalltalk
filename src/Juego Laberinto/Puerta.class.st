"
Clase Principal Puerta
"
Class {
	#name : 'Puerta',
	#superclass : 'ElementoMapa',
	#instVars : [
		'abierta',
		'lado1',
		'lado2'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'accessing' }
Puerta >> abierta [

	^ abierta
]

{ #category : 'accessing' }
Puerta >> abierta: anObject [

	abierta := anObject
]

{ #category : 'caminar' }
Puerta >> entrar [
self abierta 
	ifTrue:[ Transcript show:'La puerta está abierta';cr]
	ifFalse:[ Transcript show:'La puerta está cerrada';cr].

]

{ #category : 'consulta' }
Puerta >> esPuerta [ 
^true.
]

{ #category : 'initialization' }
Puerta >> initialize [ 
 abierta:=false.
]

{ #category : 'accessing' }
Puerta >> lado1 [

	^ lado1
]

{ #category : 'accessing' }
Puerta >> lado1: anObject [

	lado1 := anObject
]

{ #category : 'accessing' }
Puerta >> lado2 [

	^ lado2
]

{ #category : 'accessing' }
Puerta >> lado2: anObject [

	lado2 := anObject
]

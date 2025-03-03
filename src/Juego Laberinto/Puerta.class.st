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
Puerta >> abrir [
abierta:=true.



]

{ #category : 'caminar' }
Puerta >> cerrar [
abierta:=false.
]

{ #category : 'caminar' }
Puerta >> entrar:alguien [
	self abierta 
	ifTrue:[ alguien posicion = self lado1 ifTrue:[self lado2 entrar:alguien] ifFalse:[self lado1 entrar:alguien] ]
	ifFalse:[ Transcript show: 'La puerta esta cerrada';cr].

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

{ #category : 'printing' }
Puerta >> printOn: aStream [
aStream nextPutAll: 'Puerta'; nextPutAll: self lado1 num asString ; nextPutAll: '-' ; nextPutAll: self lado2 num asString .
self abierta ifTrue: [ aStream nextPutAll:'abierta'  ].
self abierta ifFalse: [ aStream nextPutAll: 'serrada' ].
]

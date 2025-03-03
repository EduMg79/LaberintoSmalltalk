"
Clase Principal de Pared
"
Class {
	#name : 'Pared',
	#superclass : 'ElementoMapa',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'entrar' }
Pared >> entrar [ 
 Transcript  show:'Te has chocado con una pared';cr.
]

{ #category : 'entrar' }
Pared >> entrar: alguien [
self abierta
ifTrue:[
	alguien posicion self lado1 ifTrue: [ 
		self lado2 entrar: alguien
		 ]ifFalse: [ 
		self lado1 entrar: alguien 
		 ]
	]
ifFalse:[ Transcript show: alguien printString ; nextPutAll: 'se ha chocao con una pared' ;cr].
]

{ #category : 'consulta' }
Pared >> esPared [ 
^true.
]

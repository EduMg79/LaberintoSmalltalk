"
Interfaz común de los entes del juego
"
Class {
	#name : 'Ente',
	#superclass : 'ElementoMapa',
	#instVars : [
		'poder',
		'vidas',
		'posicion'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'initialization' }
Ente >> initialize [ 
 vidas:=5.
 poder:=1.
]

{ #category : 'accessing' }
Ente >> poder [

	^ poder
]

{ #category : 'accessing' }
Ente >> poder: anObject [

	poder := anObject
]

{ #category : 'accessing' }
Ente >> posicion [

	^ posicion
]

{ #category : 'accessing' }
Ente >> posicion: anObject [

	posicion := anObject
]

{ #category : 'accessing' }
Ente >> vidas [

	^ vidas
]

{ #category : 'accessing' }
Ente >> vidas: anObject [

	vidas := anObject
]

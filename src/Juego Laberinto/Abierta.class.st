Class {
	#name : 'Abierta',
	#superclass : 'EstadoPuerta',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Abierta >> abrir:unaPuerta [ 
	"la puerta ya esta abierta"
]

{ #category : 'as yet unclassified' }
Abierta >> cerrar:unaPuerta [ 
Transcript show: 'Puerta cerrada';cr.
unaPuerta estado:Cerrada new.

]

{ #category : 'as yet unclassified' }
Abierta >> entrar:alguien puerta:unaPuerta [ 
	unaPuerta puedeEntrar: alguien.
]

{ #category : 'as yet unclassified' }
Abierta >> estaAbierta [ 
	^true
]

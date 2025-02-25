"
Clase principal de Habitacion

"
Class {
	#name : 'Habitacion',
	#superclass : 'Contenedor',
	#instVars : [
		'este',
		'oeste',
		'num',
		'norte',
		'sur'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'consulta' }
Habitacion >> esHabitacion [ 
^true.
]

{ #category : 'accessing' }
Habitacion >> este [

	^ este
]

{ #category : 'accessing' }
Habitacion >> este: anObject [

	este := anObject
]

{ #category : 'accessing' }
Habitacion >> norte [

	^ norte
]

{ #category : 'accessing' }
Habitacion >> norte: anObject [

	norte := anObject
]

{ #category : 'accessing' }
Habitacion >> num [

	^ num
]

{ #category : 'accessing' }
Habitacion >> num: anObject [

	num := anObject
]

{ #category : 'accessing' }
Habitacion >> oeste [

	^ oeste
]

{ #category : 'accessing' }
Habitacion >> oeste: anObject [

	oeste := anObject
]

{ #category : 'accessing' }
Habitacion >> sur [

	^ sur
]

{ #category : 'accessing' }
Habitacion >> sur: anObject [

	sur := anObject
]

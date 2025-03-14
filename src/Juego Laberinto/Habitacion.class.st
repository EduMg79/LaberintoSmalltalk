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

{ #category : 'caminar' }
Habitacion >> entrar:alguien [
Transcript show:alguien printString; nextPutAll: ' esta en'; nextPutAll: self printString ;cr.
	
	alguien posicion:self.
]

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

{ #category : 'as yet unclassified' }
Habitacion >> irAlEste:alguien [
 self este entrar: alguien.
]

{ #category : 'as yet unclassified' }
Habitacion >> irAlNorte:alguien [
 self norte entrar: alguien.
]

{ #category : 'as yet unclassified' }
Habitacion >> irAlOEste:alguien [
 self oeste entrar: alguien.
]

{ #category : 'as yet unclassified' }
Habitacion >> irAlSur:alguien [
 self sur entrar: alguien.
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

{ #category : 'printing' }
Habitacion >> printOn: aStream [
aStream nextPutAll: 'hab' ; nextPutAll: self num asString.
]

{ #category : 'accessing' }
Habitacion >> sur [

	^ sur
]

{ #category : 'accessing' }
Habitacion >> sur: anObject [

	sur := anObject
]

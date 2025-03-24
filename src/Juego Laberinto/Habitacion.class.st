"
Clase principal de Habitacion

"
Class {
	#name : 'Habitacion',
	#superclass : 'Contenedor',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'consulta' }
Habitacion >> esHabitacion [ 
^true.
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
Habitacion >> num: anObject [

	num := anObject
]

{ #category : 'printing' }
Habitacion >> printOn: aStream [
aStream nextPutAll: 'hab' ; nextPutAll: self num asString.
]

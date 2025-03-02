"
clase principal 
"
Class {
	#name : 'ElementoMapa',
	#superclass : 'Object',
	#instVars : [
		'padre'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'entrar' }
ElementoMapa >> entrar [
 Transcript show: 'Te has chocado contra una pared'
]

{ #category : 'entrar' }
ElementoMapa >> entrar:alguien [
 self subclassResponsibility .
]

{ #category : 'consulta' }
ElementoMapa >> esHabitacion [
 ^false.
]

{ #category : 'consulta' }
ElementoMapa >> esLaberinto [ 
^false.
]

{ #category : 'consulta' }
ElementoMapa >> esPared [
^false.
]

{ #category : 'consulta' }
ElementoMapa >> esPuerta [
^false.
]

{ #category : 'accessing' }
ElementoMapa >> padre [

	^ padre
]

{ #category : 'accessing' }
ElementoMapa >> padre: anObject [

	padre := anObject
]

{ #category : 'recorrido' }
ElementoMapa >> recorrer:unBloque [
  self subclassResponsibility .
]

Class {
	#name : 'Rombo',
	#superclass : 'Forma',
	#instVars : [
		'noroeste',
		'sureste',
		'suroeste',
		'noreste'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Rombo >> fabricarNoreste [
 ^Noreste new.
]

{ #category : 'as yet unclassified' }
Rombo >> fabricarNoroeste [
 ^Noroeste new.
]

{ #category : 'as yet unclassified' }
Rombo >> fabricarSureste [
 ^Sureste new.
]

{ #category : 'as yet unclassified' }
Rombo >> fabricarSuroeste [
 ^Suroeste new.
]

{ #category : 'accessing' }
Rombo >> noreste [

	^ noreste
]

{ #category : 'accessing' }
Rombo >> noreste: anObject [

	noreste := anObject
]

{ #category : 'accessing' }
Rombo >> noroeste [

	^ noroeste
]

{ #category : 'accessing' }
Rombo >> noroeste: anObject [

	noroeste := anObject
]

{ #category : 'accessing' }
Rombo >> sureste [

	^ sureste
]

{ #category : 'accessing' }
Rombo >> sureste: anObject [

	sureste := anObject
]

{ #category : 'accessing' }
Rombo >> suroeste [

	^ suroeste
]

{ #category : 'accessing' }
Rombo >> suroeste: anObject [

	suroeste := anObject
]

Class {
	#name : 'Cuadrado',
	#superclass : 'Forma',
	#instVars : [
		'norte',
		'sur',
		'este',
		'oeste'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'accessing' }
Cuadrado >> este [

	^ este
]

{ #category : 'accessing' }
Cuadrado >> este: anObject [

	este := anObject
]

{ #category : 'as yet unclassified' }
Cuadrado >> irAlEste:alguien [
 self este entrar: alguien.
]

{ #category : 'as yet unclassified' }
Cuadrado >> irAlNorte:alguien [
 self norte entrar: alguien.
]

{ #category : 'as yet unclassified' }
Cuadrado >> irAlOEste:alguien [
 self oeste entrar: alguien.
]

{ #category : 'as yet unclassified' }
Cuadrado >> irAlOeste:alguien [
 self oeste entrar: alguien.
]

{ #category : 'as yet unclassified' }
Cuadrado >> irAlSur:alguien [
 self sur entrar: alguien.
]

{ #category : 'accessing' }
Cuadrado >> norte [

	^ norte
]

{ #category : 'accessing' }
Cuadrado >> norte: anObject [

	norte := anObject
]

{ #category : 'accessing' }
Cuadrado >> oeste [

	^ oeste
]

{ #category : 'accessing' }
Cuadrado >> oeste: anObject [

	oeste := anObject
]

{ #category : 'accessing' }
Cuadrado >> sur [

	^ sur
]

{ #category : 'accessing' }
Cuadrado >> sur: anObject [

	sur := anObject
]

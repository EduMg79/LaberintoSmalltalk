Class {
	#name : 'Forma',
	#superclass : 'Object',
	#instVars : [
		'orientaciones'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion orientaciones' }
Forma >> agregarOrientacion:unaOr [ 
	self orientaciones add:unaOr.
]

{ #category : 'initialization' }
Forma >> initialize [ 
	orientaciones:=OrderedCollection new.
]

{ #category : 'gestion orientaciones' }
Forma >> obtenerElementoOr:unaOR [ 
	^unaOR obtenerElementoOrEn:self.
]

{ #category : 'accessing' }
Forma >> obtenerOrientacion [ 
	| ind |
	ind:=(1 to:self orientaciones size) atRandom.
	^self orientaciones at:ind.
]

{ #category : 'accessing' }
Forma >> orientaciones [

	^ orientaciones
]

{ #category : 'accessing' }
Forma >> orientaciones: anObject [

	orientaciones := anObject
]

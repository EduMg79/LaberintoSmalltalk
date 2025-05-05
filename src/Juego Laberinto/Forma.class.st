Class {
	#name : 'Forma',
	#superclass : 'Object',
	#instVars : [
		'orientaciones',
		'punto',
		'extend',
		'num'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion orientaciones' }
Forma >> agregarOrientacion:unaOr [ 
	self orientaciones add:unaOr.
]

{ #category : 'as yet unclassified' }
Forma >> calcularPosicion [
	self orientaciones do:[:or |
		or calcularPosicionDesde:self ]

]

{ #category : 'initialization' }
Forma >> initialize [ 
	orientaciones:=OrderedCollection new.
]

{ #category : 'as yet unclassified' }
Forma >> irAlEste:alguien [
self subclassResponsibility .
]

{ #category : 'as yet unclassified' }
Forma >> irAlNorte:alguien [
 self subclassResponsibility .
]

{ #category : 'as yet unclassified' }
Forma >> irAlOEste: alguien [
self subclassResponsibility .
]

{ #category : 'as yet unclassified' }
Forma >> irAlSur:alguien [
self subclassResponsibility .
]

{ #category : 'gestion orientaciones' }
Forma >> obtenerElementoOr:unaOR [ 
	^unaOR obtenerElementoOrEn:self.
]

{ #category : 'gestion orientaciones' }
Forma >> obtenerOrientacion [ 
	| ind |
	ind:=(1 to:self orientaciones size) atRandom.
	^self orientaciones at:ind.
]

{ #category : 'gestion orientaciones' }
Forma >> obtenerOrientaciones [ 
 ^self orientaciones.
]

{ #category : 'accessing' }
Forma >> orientaciones [

	^ orientaciones
]

{ #category : 'accessing' }
Forma >> orientaciones: anObject [

	orientaciones := anObject
]

{ #category : 'gestion orientaciones' }
Forma >> ponerEnOr: unaOr elemento: unEM [
unaOr ponerElemento: unEM en: self. 
]

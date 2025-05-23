"
Orientacion norte

"
Class {
	#name : 'Norte',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'accessing' }
Norte class >> default [
UnicaInstancia ifNil: [ UnicaInstancia:=super new].
	^UnicaInstancia
]

{ #category : 'instance creation' }
Norte class >> new [
self error: 'no se puede crear objeto'.
]

{ #category : 'as yet unclassified' }
Norte >> calcularPosicionDesde: unaForma [
	| unPunto |
	unPunto := (unaForma punto y-1) @ (unaForma punto x).
	unaForma este calcularPosicionDesde: unaForma en: unPunto
]

{ #category : 'gestion orientaciones' }
Norte >> caminar:unBicho [ 
|pos|
pos :=unBicho posicion .
pos irAlNorte: unBicho .
]

{ #category : 'gestion orientaciones' }
Norte >> obtenerElementoOrEn: unContenedor [
^unContenedor norte .
]

{ #category : 'gestion orientaciones' }
Norte >> ponerElemento:unEm en:unContenedor [
  unContenedor norte:unEm.
]

{ #category : 'recorrido' }
Norte >> recorrer: unBloque contenedor:unContenedor [
unContenedor norte recorrer:unBloque.
]

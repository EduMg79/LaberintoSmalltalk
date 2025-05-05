"
Orientacion sur

"
Class {
	#name : 'Sur',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'accessing' }
Sur class >> default [
UnicaInstancia ifNil: [ UnicaInstancia:=super new].
	^UnicaInstancia
]

{ #category : 'instance creation' }
Sur class >> new [
self error: 'no se puede crear objeto'.
]

{ #category : 'as yet unclassified' }
Sur >> calcularPosicionDesde: unaForma [
	| unPunto |
	unPunto := (unaForma punto y+1) @ (unaForma punto x).
	unaForma este calcularPosicionDesde: unaForma en: unPunto

]

{ #category : 'gestion orientaciones' }
Sur >> caminar:unBicho [ 
|pos|
pos :=unBicho posicion .
pos irAlSur:unBicho .
]

{ #category : 'gestion orientaciones' }
Sur >> obtenerElementoOrEn: unContenedor [
^unContenedor sur.
]

{ #category : 'gestion orientaciones' }
Sur >> ponerElemento:unEm en:unContenedor [
  unContenedor sur:unEm.
]

{ #category : 'recorrido' }
Sur >> recorrer: unBloque contenedor:unContenedor [
unContenedor sur recorrer:unBloque.
]

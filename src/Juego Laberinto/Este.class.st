"
Orientacion este

"
Class {
	#name : 'Este',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'instance creation' }
Este class >> default [
UnicaInstancia ifNil: [ UnicaInstancia:=super new].
	^UnicaInstancia

]

{ #category : 'instance creation' }
Este class >> new [
self error: 'no se puede crear objeto'.

]

{ #category : 'as yet unclassified' }
Este >> calcularPosicionDesde: unaForma [
	| unPunto |
	unPunto := (unaForma punto x+1) @ (unaForma punto y).
	unaForma este calcularPosicionDesde: unaForma en: unPunto.
	
"el resto de orientaciones es similar"

"norte x y-1"
"sur  x y+1"
"oeste x-1 y"

]

{ #category : 'gestion orientaciones' }
Este >> caminar:unBicho [ 
|pos|
pos :=unBicho posicion .
pos irAlEste:unBicho .

]

{ #category : 'gestion orientaciones' }
Este >> obtenerElementoOrEn: unContenedor [
^unContenedor este.

]

{ #category : 'gestion orientaciones' }
Este >> ponerElemento:unEm en:unContenedor [
  unContenedor este:unEm.
]

{ #category : 'recorrido' }
Este >> recorrer: unBloque contenedor:unContenedor [
unContenedor este recorrer:unBloque.
]

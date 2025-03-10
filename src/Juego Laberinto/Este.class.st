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
UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
^UnicaInstancia

]

{ #category : 'instance creation' }
Este class >> new [
self error: 'no se puede crear objeto'.

]

{ #category : 'gestion orientaciones' }
Este >> caminar:unBicho [ 
|pos|
pos :=unBicho posicion .
pos este entrar:unBicho .

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

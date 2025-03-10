"
Oritentacion oeste

"
Class {
	#name : 'Oeste',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'accessing' }
Oeste class >> default [
UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
^UnicaInstancia
]

{ #category : 'instance creation' }
Oeste class >> new [
self error: 'no se puede crear objeto'.
]

{ #category : 'gestion orientaciones' }
Oeste >> caminar:unBicho [ 
|pos|
pos :=unBicho posicion .
pos oeste entrar:unBicho .
]

{ #category : 'gestion orientaciones' }
Oeste >> obtenerElementoOrEn:unContenedor [ 
 ^unContenedor oeste .
]

{ #category : 'gestion orientaciones' }
Oeste >> ponerElemento:unEm en:unContenedor [
  unContenedor oeste:unEm.
]

{ #category : 'recorrido' }
Oeste >> recorrer: unBloque contenedor:unContenedor [
unContenedor oeste recorrer:unBloque.
]

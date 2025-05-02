"
clase principal 
"
Class {
	#name : 'ElementoMapa',
	#superclass : 'Object',
	#instVars : [
		'padre',
		'comandos'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
ElementoMapa >> aceptar: unvisitor [
self subclassResponsibility .
]

{ #category : 'initialize' }
ElementoMapa >> agregarComandos:unComando [
self comandos add: unComando.
]

{ #category : 'accessing' }
ElementoMapa >> comandos [

	^ comandos
]

{ #category : 'accessing' }
ElementoMapa >> comandos: anObject [

	comandos := anObject
]

{ #category : 'initialize' }
ElementoMapa >> eliminarComando:unComando [
self comandos remove: unComando ifAbsent:["no existe el objeto"].
]

{ #category : 'entrar' }
ElementoMapa >> entrar:alguien [
 self subclassResponsibility .
]

{ #category : 'as yet unclassified' }
ElementoMapa >> esArmario [
^false.
]

{ #category : 'as yet unclassified' }
ElementoMapa >> esBomba [
 ^false.
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

{ #category : 'as yet unclassified' }
ElementoMapa >> esTunel [
 ^true.
]

{ #category : 'initialize' }
ElementoMapa >> initialize [
 comandos := OrderedCollection new.
]

{ #category : 'as yet unclassified' }
ElementoMapa >> obtenerComandos [ 
  ^self comandos 
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
  unBloque value:self .
]

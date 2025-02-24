"
Conteedor es el composite, un EM que tiene hijos

"
Class {
	#name : 'Contenedor',
	#superclass : 'ElementoMapa',
	#instVars : [
		'hijos'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion hijos' }
Contenedor >> agregarHijo:unEM [
unEM padre: self.
self hijos add:unEM.

]

{ #category : 'gestion hijos' }
Contenedor >> eliminarHijo:unEM [
 self hijos remove: unEM ifAbsent:{"no eciste ese objeto"}.
]

{ #category : 'accessing' }
Contenedor >> hijos [

	^ hijos
]

{ #category : 'accessing' }
Contenedor >> hijos: anObject [

	hijos := anObject
]

{ #category : 'initialization' }
Contenedor >> initialize [
hijos:=OrderedCollection new.
]

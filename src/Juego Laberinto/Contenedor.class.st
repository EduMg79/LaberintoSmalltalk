"
Conteedor es el composite, un EM que tiene hijos

"
Class {
	#name : 'Contenedor',
	#superclass : 'ElementoMapa',
	#instVars : [
		'hijos',
		'forma',
		'num'
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

{ #category : 'gestion orientaciones' }
Contenedor >> agregarOrientacion:unaOr [
self forma agregarOrientacion: unaOr.
]

{ #category : 'gestion hijos' }
Contenedor >> eliminarHijo:unEM [
 self hijos remove: unEM ifAbsent:{"no existe ese objeto"}.
]

{ #category : 'caminar' }
Contenedor >> entrar:alguien [
Transcript show: alguien printString ;  nextPutAll: ' esta en ' ; nextPutAll: self printString ;cr.
	alguien posicion: self.
	alguien buscarTunel.
]

{ #category : 'accessing' }
Contenedor >> forma [

	^ forma
]

{ #category : 'accessing' }
Contenedor >> forma: anObject [

	forma := anObject
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
super initialize.
hijos :=OrderedCollection new.

]

{ #category : 'as yet unclassified' }
Contenedor >> irAlEste:alguien [
 self forma irAlEste:alguien .
]

{ #category : 'as yet unclassified' }
Contenedor >> irAlNorte:alguien [
 self forma irAlNorte:alguien .
]

{ #category : 'as yet unclassified' }
Contenedor >> irAlOEste:alguien [
 self forma irAlOEste:alguien .
]

{ #category : 'as yet unclassified' }
Contenedor >> irAlSur:alguien [
 self forma irAlSur:alguien .
]

{ #category : 'accessing' }
Contenedor >> num [

	^ num
]

{ #category : 'accessing' }
Contenedor >> num: anObject [

	num := anObject
]

{ #category : 'gestion orientaciones' }
Contenedor >> obtenerElementoOr:unaOr [
^self forma obtenerElementoOr: unaOr.
]

{ #category : 'gestion orientaciones' }
Contenedor >> obtenerOrientacion [ 
"obtner orientacion aleatoria"
	"| ind |
	ind:=(1 to:self orientaciones size) atRandom.
	^self orientaciones at:ind."
	^self forma obtenerOrientacion.
]

{ #category : 'as yet unclassified' }
Contenedor >> obtenerOrientaciones [
 ^self forma obtenerOrientaciones.
]

{ #category : 'gestion orientaciones' }
Contenedor >> ponerEnOr: unaOr elemento: unEM [
"unaOr ponerElemento: unEM en: self".
self forma ponerEnOr:unaOr  elemento:unEM. 
]

{ #category : 'recorrido' }
Contenedor >> recorrer: unBloque [
 unBloque value:self.
self hijos do: [ :each | each recorrer:unBloque ].
self obtenerOrientaciones  do: [:each | each recorrer:unBloque contenedor:self forma].
]

Class {
	#name : 'TestBuilder',
	#superclass : 'TestCase',
	#instVars : [
		'juego',
		'director',
		'diccionario'
	],
	#category : 'Juego Laberinto-Pruebas',
	#package : 'Juego Laberinto',
	#tag : 'Pruebas'
}

{ #category : 'as yet unclassified' }
TestBuilder >> comprobarArmario:num en:unCont [
	| arm |
	
	arm:=unCont hijos detect:[:each | each esArmario ] ifNone:[nil].
	
	self assert:arm esArmario.
	
	^arm

]

{ #category : 'as yet unclassified' }
TestBuilder >> comprobarBombaEn:unContenedor [	
	self assert:((unContenedor hijos detect:[:each | each esBomba ] ifNone:[nil]) esBomba).

]

{ #category : 'tests' }
TestBuilder >> comprobarHabitacion:num [
	| hab |
	hab:=self juego obtenerHabitacion:num.
	self assert:hab num equals:num.
	^hab


]

{ #category : 'tests' }
TestBuilder >> comprobarLaberintoRecursivo:unDic en:padre [
	| con nada lista|
		
	nada:=true.
	
	"contenedores"
	(unDic at:'tipo')='habitacion' ifTrue:[nada:=false.con:=self comprobarHabitacion:(unDic at:'num')].
	(unDic at:'tipo')='armario' ifTrue:[nada:=false.con:=self comprobarArmario:(unDic at:'num') en:padre].
	
	"hojas"
	(unDic at:'tipo')='bomba' ifTrue:[nada:=false.self comprobarBombaEn:padre].
	(unDic at:'tipo')='tunel' ifTrue:[nada:=false.self comprobarTunelEn:padre].

	lista:=(unDic at:'hijos' ifAbsent:[nil]). 
	lista ifNotNil:[lista do:[:each | self comprobarLaberintoRecursivo:each en:con]].

	nada ifTrue:[self assert:false].


]

{ #category : 'as yet unclassified' }
TestBuilder >> comprobarPuertaDe:unNum orientacion:unaOr a:otroNum orientacion:otraOr [	
	| unaHab otraHab pt1 pt2 or1 or2|
	
	unaHab:=self juego obtenerHabitacion: unNum.
	otraHab:=self juego obtenerHabitacion: otroNum.
	
	self assert:unaHab num equals:unNum.
	self assert:otraHab num equals:otroNum.
	
	or1:=self director builder perform:('fabricar',unaOr) asSymbol. 
	or2:=self director builder perform:('fabricar',otraOr) asSymbol.
	
	pt1:=unaHab obtenerElementoOr:or1.
	pt2:=otraHab obtenerElementoOr:or2.
		
	self assert:(pt1 esPuerta).
	self assert:(pt2 esPuerta).
	self assert:pt1 equals:pt2.
	
	self assert:(pt1 estaAbierta not).

]

{ #category : 'as yet unclassified' }
TestBuilder >> comprobarTunelEn:unContenedor [	
self assert:((unContenedor hijos detect:[:each | each esTunel ] ifNone:[nil]) esTunel).


]

{ #category : 'accessing' }
TestBuilder >> diccionario [

	^ diccionario
]

{ #category : 'accessing' }
TestBuilder >> diccionario: anObject [

	diccionario := anObject
]

{ #category : 'accessing' }
TestBuilder >> director [

	^ director
]

{ #category : 'accessing' }
TestBuilder >> director: anObject [

	director := anObject
]

{ #category : 'accessing' }
TestBuilder >> juego [

	^ juego
]

{ #category : 'accessing' }
TestBuilder >> juego: anObject [

	juego := anObject
]

{ #category : 'running' }
TestBuilder >> setUp [ 

	super setUp.
	
self director:Director new.
self director procesar:'C:\Users\Usuario\Desktop\3º\lab2HTunel.json'.
self diccionario: self director dict .
self juego: director obtenerJuego.
self juego agregarPersonaje:'Surmania'.

]

{ #category : 'tests' }
TestBuilder >> testBichoAtaca [ 
	|hab1 bicho person vidas|
	hab1:=self juego obtenerHabitacion:1.
	bicho:=self juego bichos at:1.
	person:= self juego person.
	
	self assert: bicho notNil.
	self assert: person notNil.
	
	hab1 entrar:bicho.
	hab1 entrar:person.
	self assert: (bicho posicion = (person posicion)).
	vidas:=person vidas.
	bicho atacar.
	
	self assert: person vidas equals:0.
]

{ #category : 'tests' }
TestBuilder >> testIniciales [ 
 self assert: self juego notNil .
 self assert: self juego laberinto notNil.
]

{ #category : 'tests' }
TestBuilder >> testLaberinto [
	
(self diccionario at:'laberinto') do:[:each | self comprobarLaberintoRecursivo:each en:'root' ].
	
	(self diccionario at:'puertas' ifAbsent:[^nil]) do:[:cada | 
	self comprobarPuertaDe:(cada at:1) orientacion:(cada at:2) a:(cada at:3) orientacion:(cada at:4)].

]

{ #category : 'tests' }
TestBuilder >> testPersonaje [
|hab|
 self assert: self juego person notNil.
hab:=self juego obtenerHabitacion: 1.
self assert: self juego person posicion equals: hab.
self assert: self juego person vidas equals:5.

]

{ #category : 'tests' }
TestBuilder >> testPersonajeAtaca [ 
	| hab1 bicho person |
	hab1:=juego obtenerHabitacion:1.
	bicho:=juego bichos at:1.
	person:=juego person.
	
	self assert:bicho notNil.
	self assert:person notNil.
	
	hab1 entrar:bicho.
	hab1 entrar:person.
	person atacar.
	
	self assert:bicho vidas equals:2.
]

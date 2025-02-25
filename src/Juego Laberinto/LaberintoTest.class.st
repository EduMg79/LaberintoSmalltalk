Class {
	#name : 'LaberintoTest',
	#superclass : 'TestCase',
	#instVars : [
		'juego'
	],
	#category : 'Juego Laberinto-Pruebas',
	#package : 'Juego Laberinto',
	#tag : 'Pruebas'
}

{ #category : 'accessing' }
LaberintoTest >> juego [

	^ juego
]

{ #category : 'accessing' }
LaberintoTest >> juego: anObject [

	juego := anObject
]

{ #category : 'running' }
LaberintoTest >> setUp [
	| fm |
	super setUp.
  juego:=Juego new.
  fm:=Creator new.
  juego crearLaberinto2HabitacionesFM: fm.





	"Put here a common initialization logic for tests"
]

{ #category : 'tests' }
LaberintoTest >> testHabitaciones [

|hab1 hab2 pt12 norte sur este oeste unFM |


hab1:= self juego obtenerHabitacion: 1.
hab2:= self juego obtenerHabitacion: 2.

self assert: hab1 esHabitacion. "hab1 class= Habitacion"
self assert: hab2 esHabitacion.

self assert: hab1 norte esPared . "hab1 obtenerElementoOr: norte. norte variable temporal"


pt12:= hab1 sur. "hab1 obtenerElementoOR:sur"
self assert: pt12 esPuerta.
self assert: hab2 esPuerta.
self assert: pt12 abierta not.






]

{ #category : 'tests' }
LaberintoTest >> testHabitaciones:fm [

|hab1 hab2 pt12 norte sur este oeste  |

	norte:=fm fabricarNorte.
	sur:=fm fabricarSur.
	este:=fm fabricarEste.
	oeste:=fm fabricarOeste.
	
hab1:= self juego obtenerHabitacion: 1.
hab2:= self juego obtenerHabitacion: 2.

self assert: hab1 esHabitacion. "hab1 class= Habitacion"
self assert: hab2 esHabitacion.
self assert: (hab1 obtenerElementoOrEn: norte) esPared .
self assert: (hab1 obtenerElementoOrEn: este ) esPared .
self assert: (hab1 obtenerElementoOrEn: oeste) esPared .

self assert: (hab2 obtenerElementoOrEn: sur) esPared .
self assert: (hab2 obtenerElementoOrEn: este) esPared .
self assert: (hab2 obtenerElementoOrEn: oeste) esPared .
self assert: hab1 norte esPared . "hab1 obtenerElementoOr: norte. norte variable temporal"


pt12:= hab1 sur. "hab1 obtenerElementoOR:sur"
self assert: pt12 esPuerta.
self assert: (hab2 obtenerElementoOrEn:norte) esPuerta.
self assert: pt12 abierta not.
self assert: pt12 equals: (hab2 obtenerElementoOrEn:norte).






]

{ #category : 'tests' }
LaberintoTest >> testIniciales [

 | numHab |
self assert: self juego notNil .
self assert: self juego laberinto notNil .
 numHab:= self juego laberinto hijos size.
self assert: numHab equals: 2.
]

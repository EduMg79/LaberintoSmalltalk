"
Clase Principal Juego
"
Class {
	#name : 'Juego',
	#superclass : 'Object',
	#instVars : [
		'laberinto',
		'bichos',
		'hilos',
		'person',
		'prototipo'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Juego >> abrirPuertas [
self laberinto abrirPuertas .
]

{ #category : 'gestion bichos' }
Juego >> agregarBicho:unBicho [
 self bichos add: unBicho .
unBicho juego:self.
]

{ #category : 'as yet unclassified' }
Juego >> agregarPersonaje:unaCadena [
 self person: (Personaje new nombre:unaCadena) .
self person juego: self.
self laberinto entrar: self person.
]

{ #category : 'accessing' }
Juego >> bichos [

	^ bichos
]

{ #category : 'accessing' }
Juego >> bichos: anObject [

	bichos := anObject
]

{ #category : 'as yet unclassified' }
Juego >> buscarBicho [
	|bicho|
	
	bicho:= self bichos  detect:[:each | each estaVivo and:[each posicion = self person posicion]] ifNone:[nil]. "mensajes 10 y 11"
	
	bicho ifNotNil:[bicho esAtacadoPor: self person ].
]

{ #category : 'ataques' }
Juego >> buscarPersonaje:unBicho [
	|posbicho pospersonaje|
	posbicho:=unBicho posicion.
	pospersonaje :=self person posicion.
	posbicho=pospersonaje ifTrue: [ self person esAtacadoPor:unBicho ].
]

{ #category : 'as yet unclassified' }
Juego >> cerrarPuertas [
self laberinto cerrarPuertas .
]

{ #category : 'as yet unclassified' }
Juego >> clonarLaberinto [ 
^self prototipo veryDeepCopy .
]

{ #category : 'laberinto' }
Juego >> crearLaberinto2Habitaciones [

	| hab1 hab2 puerta |
	
	hab1:=Habitacion new num:1.
	hab1 este:Pared new.
	hab1 oeste:Pared new.
	hab1 norte:Pared new.
	
	hab2:=Habitacion new num:2.
	hab2 sur:Pared new.
	hab2 este:Pared new.
	hab2 oeste:Pared new.
	
	puerta:=Puerta new.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:Laberinto new.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto 
]

{ #category : 'laberinto' }
Juego >> crearLaberinto2HabitacionesFM:unFM [

	| hab1 hab2 puerta |
	
	hab1:=unFM fabricarHabitacion: 1.
	hab2:=unFM fabricarHabitacion: 2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 forma sur:puerta.
	hab2 forma norte:puerta.
	
	hab1 ponerEnOr: unFM fabricarSur elemento:puerta.
	hab2 ponerEnOr: unFM fabricarNorte elemento:puerta.
	 
	self laberinto: unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto



















]

{ #category : 'laberinto' }
Juego >> crearLaberinto2HabitacionesFMD:unFM [

	| hab1 hab2 puerta bomba1 bomba2|
	
	hab1:=unFM fabricarHabitacion: 1.
	hab2:=unFM fabricarHabitacion: 2.
	
	bomba1 := unFM fabricarBomba.
	bomba1 em:unFM fabricarPared.
	
	bomba2 := unFM fabricarBomba.
	bomba2 em:unFM fabricarPared.
	
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 este: bomba1.
	hab2 este: bomba2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	self laberinto: unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto



















]

{ #category : 'laberinto' }
Juego >> crearLaberinto4H4BFM:unFM [
"unFM sebe ser una instancia de Creator"

	| hab1 hab2 hab3 hab4 puerta1 puerta2 puerta3 puerta4 bicho1 bicho2 bicho3 bicho4 norte sur este oeste|
	norte:=unFM fabricarNorte.
	sur:=unFM fabricarSur.
	este:=unFM fabricarEste.
	oeste:=unFM fabricarOeste.
	hab1:=unFM fabricarHabitacion:1.
	hab2:=unFM fabricarHabitacion:2.
	hab3:=unFM fabricarHabitacion:3.
	hab4:=unFM fabricarHabitacion:4. 
	
	puerta1:=unFM fabricarPuerta.
	puerta2:=unFM fabricarPuerta.
	puerta3:=unFM fabricarPuerta.
	puerta4:=unFM fabricarPuerta.
	puerta1 lado1:hab1.
	puerta1 lado2:hab2.
	puerta2 lado1:hab1.
	puerta2 lado2:hab3.
	puerta3 lado1:hab2.
	puerta3 lado2:hab4.
	puerta4 lado1:hab3.
	puerta4 lado2:hab4.
	
	hab1 ponerEnOr:sur elemento:puerta1.
	hab2 ponerEnOr:norte elemento:puerta1.
	hab1 ponerEnOr:este elemento:puerta2.
	hab3 ponerEnOr:oeste elemento:puerta2.
	hab2 ponerEnOr:este elemento:puerta3.
	hab4 ponerEnOr:oeste elemento:puerta3.
	hab3 ponerEnOr:sur elemento:puerta4.
	hab4 ponerEnOr:norte elemento:puerta4.
	
	bicho1:=unFM fabricarBichoAgresivo.
	bicho2:=unFM fabricarBichoAgresivo.
	bicho3:=unFM fabricarBichoPerezoso.
	bicho4:=unFM fabricarBichoPerezoso.
	
	
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	self laberinto agregarHabitacion:hab3.
	self laberinto agregarHabitacion:hab4.
	self agregarBicho:bicho1.
	self agregarBicho:bicho2.
	self agregarBicho:bicho3.
	self agregarBicho:bicho4.
	
	bicho1 posicion:hab1.
	bicho2 posicion:hab3.
	bicho3 posicion:hab2.
	bicho4 posicion:hab4.
	
	^self laberinto.
]

{ #category : 'laberinto' }
Juego >> crearLaberinto4HabitacionesBichos:unFM [

	| hab1 hab2 hab3 hab4  puerta puerta2 puerta3 puerta4 bicho1 bicho2 bicho3 bicho4|
	
	hab1:=unFM fabricarHabitacion: 1.
	hab2:=unFM fabricarHabitacion: 2.
	hab3:=unFM fabricarHabitacion: 3.
	hab4:=unFM fabricarHabitacion: 4.
	
	bicho1 := unFM fabricarBichoPerezoso .
	bicho2 :=unFM fabricarBichoPerezoso .
	bicho3 := unFM fabricarBichoAgresivo .
	bicho4 := unFM fabricarBichoAgresivo .
	

	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	puerta2:= unFM fabricarPuerta .
	puerta2 lado1: hab2.
	puerta2 lado2: hab4.
	
	puerta3:= unFM fabricarPuerta .
	puerta3 lado1: hab4.
	puerta3 lado2: hab3.
	
	puerta4:= unFM fabricarPuerta.
	puerta4 lado1: hab3.
	puerta4 lado2: hab1.
	
	
	hab1 este: bicho1.
	hab2 norte: bicho2.
	hab3 oeste: bicho3.
	hab4 sur: bicho4.
	
	hab1 sur:puerta.
	hab2 este:puerta2.
	hab3 sur: puerta3.
	hab4 norte: puerta4 .
	
	bicho1 posicion: hab1.
	bicho2 posicion: hab2.
	bicho3 posicion: hab3.
	bicho4 posicion: hab4.
	
	self laberinto: unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	self laberinto agregarHabitacion: hab3.
	self laberinto agregarHabitacion: hab4.
	
	self agregarBicho: bicho1.
	self agregarBicho: bicho2.
	self agregarBicho: bicho3.
	self agregarBicho: bicho4.

	^self laberinto



















]

{ #category : 'gestion bichos' }
Juego >> eliminarBicho:unBicho [
 self bichos  remove: unBicho ifAbsent:{Transcript show: 'no existen bichos';cr} .
]

{ #category : 'as yet unclassified' }
Juego >> estanTodosLosBichosMuertos [
 |bicho|

bicho := self bichos detect: [ :each | each estaVivo ] ifNone: [ nil ].
(bicho isNil and:[self person estaVivo ]) ifTrue: [ self ganaPersonaje ].

]

{ #category : 'as yet unclassified' }
Juego >> ganaPersonaje [
 Transcript show: 'Ha ganado el personaje';cr.
]

{ #category : 'accessing' }
Juego >> hilos [

	^ hilos
]

{ #category : 'accessing' }
Juego >> hilos: anObject [

	hilos := anObject
]

{ #category : 'initialization' }
Juego >> initialize [ 
bichos:=OrderedCollection new.
hilos:= Dictionary new.
]

{ #category : 'accessing' }
Juego >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : 'gestion bichos' }
Juego >> lanzarBicho:unBicho [
		| proceso |
	Transcript show:unBicho printString ; nextPutAll: ' se activa';cr.
	 proceso:=[ [unBicho estaVivo] whileTrue:[unBicho actua]] fork.
 	self hilos at:unBicho put:proceso.


]

{ #category : 'gestion bichos' }
Juego >> lanzarBichos [

	self bichos do:[:each | self lanzarBicho:each]


]

{ #category : 'ataques' }
Juego >> muerePersonaje [
 Transcript show: 'fin del juego Ganan los bichos';cr.
 self terminarBichos .
]

{ #category : 'accessing' }
Juego >> obtenerHabitacion:unNum [
"delgar y devolver lo que le de laberinto"
 ^self laberinto obtenerHabitacion:unNum.
]

{ #category : 'accessing' }
Juego >> person [

	^ person
]

{ #category : 'accessing' }
Juego >> person: anObject [

	person := anObject
]

{ #category : 'accessing' }
Juego >> prototipo [

	^ prototipo
]

{ #category : 'accessing' }
Juego >> prototipo: anObject [

	prototipo := anObject
]

{ #category : 'gestion bichos' }
Juego >> terminarBicho:unBicho [
Transcript show:unBicho printString ; nextPutAll: 'muere';cr.
unBicho vidas: 0.

self estanTodosLosBichosMuertos.
]

{ #category : 'gestion bichos' }
Juego >> terminarBichos [

	self bichos do:[:each | self terminarBicho:each]
]

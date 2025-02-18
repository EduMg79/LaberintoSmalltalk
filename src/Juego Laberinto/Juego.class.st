"
Clase Principal Juego
"
Class {
	#name : 'Juego',
	#superclass : 'Object',
	#instVars : [
		'laberinto',
		'bichos'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion bichos' }
Juego >> agregarBicho:unBicho [
 self bichos add: unBicho .
]

{ #category : 'accessing' }
Juego >> bichos [

	^ bichos
]

{ #category : 'accessing' }
Juego >> bichos: anObject [

	bichos := anObject
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
	
	hab1 sur:puerta.
	hab2 norte:puerta.
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

{ #category : 'as yet unclassified' }
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

{ #category : 'initialization' }
Juego >> initialize [ 
 bichos:=OrderedCollection new.
]

{ #category : 'accessing' }
Juego >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : 'accessing' }
Juego >> obtenerHabitacion:unNum [
"delgar y devolver lo que le de laberinto"
 ^self laberinto obtenerHabitacion:unNum.
]

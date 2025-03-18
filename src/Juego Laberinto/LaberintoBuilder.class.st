Class {
	#name : 'LaberintoBuilder',
	#superclass : 'Object',
	#instVars : [
		'juego',
		'laberinto'
	],
	#category : 'Juego Laberinto-Builder',
	#package : 'Juego Laberinto',
	#tag : 'Builder'
}

{ #category : 'factory method' }
LaberintoBuilder >> fabricarArmario:unNum en:unContenedor [
|arm|


	arm:=Armario new num:unNum.
	arm agregarOrientacion: self fabricarNorte; agregarOrientacion: self fabricarSur; agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste.
	
	arm orientaciones do:[:each | arm ponerEnOr:each elemento:self fabricarPared].
	arm este:self fabricarPared.
	arm oeste:self fabricarPared.
	arm norte:self fabricarPared.
	arm sur:self fabricarPared.
	unContenedor agregarHijo: arm.
	self laberinto agregarHabitacion: arm.
	^arm

]

{ #category : 'fm bicho' }
LaberintoBuilder >> fabricarBichoAgresivo [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Agresivo new.
	bicho poder:5.
	bicho vidas:3.
	^bicho
]

{ #category : 'as yet unclassified' }
LaberintoBuilder >> fabricarBichoModo:unModo posicion: unNum [
|hab bicho|
hab:= self laberinto obtenerHabitacion: unNum .
bicho:= self perform: ('FabricarBicho',unModo ) asSymbol .
hab entrar: bicho.
self juego agregarBicho: bicho.
"strModo='Agresivo' ifTrue:{bicho:=self fabricarBichoAgresivo:hab}" 
]

{ #category : 'fm bicho' }
LaberintoBuilder >> fabricarBichoPerezoso [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Perezoso new.
	bicho poder:1.
	bicho vidas:2.
	^bicho
]

{ #category : 'as yet unclassified' }
LaberintoBuilder >> fabricarBombaEn:unContenedor [
|bmb|
bmb:= Bomba new.
unContenedor agregarHijo: bmb.
]

{ #category : 'as yet unclassified' }
LaberintoBuilder >> fabricarEste [
 ^Este default.
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarHabitacion:unNum [
|hab|


	hab:=Habitacion new num:unNum.
	hab agregarOrientacion: self fabricarNorte; agregarOrientacion: self fabricarSur; agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste.
	
	hab orientaciones do:[:each | hab ponerEnOr:each elemento:self fabricarPared].
	hab este:self fabricarPared.
	hab oeste:self fabricarPared.
	hab norte:self fabricarPared.
	hab sur:self fabricarPared.
	
	self laberinto agregarHabitacion: hab.
	^hab

]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarJuego [ 
self juego: Juego new.
self juego laberinto: self laberinto .

]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarLaberinto [ 
 self laberinto: Laberinto new.
]

{ #category : 'as yet unclassified' }
LaberintoBuilder >> fabricarNorte [
 ^Norte default.
]

{ #category : 'as yet unclassified' }
LaberintoBuilder >> fabricarOeste [
 ^Oeste default.
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarPared [ 
^Pared new
]

{ #category : 'as yet unclassified' }
LaberintoBuilder >> fabricarPuertaL1:num1 or1:or1 L2:num2 or2:or2 [
|hab1 hab2 abOr1 abOr2  pt|

hab1 := self laberinto obtenerHabitacion: num1.
hab2 :=self laberinto obtenerHabitacion: num2.
abOr1 :=self perform:('fabricar',or1) asSymbol. "fabricar+Norte => fabricarNorte"
	abOr2 :=self perform:('fabricar',or2) asSymbol.

pt:= Puerta new.
pt lado1: hab1.
pt lado2: hab2.

hab1 ponerEnOr: abOr1 elemento: pt.
hab2 ponerEnOr: abOr2 elemento: pt.
]

{ #category : 'as yet unclassified' }
LaberintoBuilder >> fabricarSur [
 ^Sur default.
]

{ #category : 'accessing' }
LaberintoBuilder >> juego [

	^ juego
]

{ #category : 'accessing' }
LaberintoBuilder >> juego: anObject [

	juego := anObject
]

{ #category : 'accessing' }
LaberintoBuilder >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
LaberintoBuilder >> laberinto: anObject [

	laberinto := anObject
]

{ #category : 'as yet unclassified' }
LaberintoBuilder >> obtenerJuego [
 ^self juego.
]

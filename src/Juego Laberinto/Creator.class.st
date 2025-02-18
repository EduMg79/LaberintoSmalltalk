Class {
	#name : 'Creator',
	#superclass : 'Object',
	#category : 'Juego Laberinto-FactoryMethod',
	#package : 'Juego Laberinto',
	#tag : 'FactoryMethod'
}

{ #category : 'fm bicho' }
Creator >> cambiarModoAgresivo:unBicho [
 unBicho modo: Agresivo new.
 unBicho poder: 10.
]

{ #category : 'fm bicho' }
Creator >> esAgresivo [
^false.
]

{ #category : 'fm bicho' }
Creator >> esPerezoso [ 
 ^false.
]

{ #category : 'fm bicho' }
Creator >> fabricarBichoAgresivo [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Agresivo new.
	bicho poder:5.
	bicho vidas:3.
	^bicho
]

{ #category : 'fm bicho' }
Creator >> fabricarBichoPerezoso [
	|bicho|
	bicho:=Bicho new.
	bicho modo: Perezoso new.
	bicho poder:1.
	bicho vidas:2.
	^bicho
]

{ #category : 'factory method' }
Creator >> fabricarBomba [
^Bomba new
]

{ #category : 'factory method' }
Creator >> fabricarHabitacion:unNum [
|hab|
hab:=Habitacion new num: unNum.
hab este: self fabricarPared.
hab oeste: self fabricarPared.
hab norte: self fabricarPared.
hab sur: self fabricarPared.
^hab


]

{ #category : 'factory method' }
Creator >> fabricarJuego [
^Juego new
]

{ #category : 'factory method' }
Creator >> fabricarLaberinto [ 
^Laberinto new 
]

{ #category : 'factory method' }
Creator >> fabricarPared [
^Pared new
]

{ #category : 'factory method' }
Creator >> fabricarPuerta [ 
^Puerta new 
]

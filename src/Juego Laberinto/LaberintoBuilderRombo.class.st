Class {
	#name : 'LaberintoBuilderRombo',
	#superclass : 'LaberintoBuilder',
	#category : 'Juego Laberinto-Builder',
	#package : 'Juego Laberinto',
	#tag : 'Builder'
}

{ #category : 'as yet unclassified' }
LaberintoBuilderRombo >> fabricarForma [
|forma|
 forma:= Rombo new.
forma agregarOrientacion: self fabricarNoroeste; agregarOrientacion: self fabricarSuroeste; agregarOrientacion:self fabricarSureste; agregarOrientacion:self fabricarNoroeste.
^forma
]

"
agresivo, mas poder
"
Class {
	#name : 'Agresivo',
	#superclass : 'Modo',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Agresivo >> buscarTunelBicho:unBicho [
|unCont tunel|
unCont:=unBicho posicion .
tunel:= unCont hijos detect: [: each | each esTunel] ifNone:[nil].
tunel 
]

{ #category : 'as yet unclassified' }
Agresivo >> dormir:unBicho [
	Transcript show:unBicho printString ; nextPutAll: ' duerme';cr.
   (Delay forSeconds: 1) wait.

]

{ #category : 'consulta' }
Agresivo >> esAgresivo [ 
 ^true.
]

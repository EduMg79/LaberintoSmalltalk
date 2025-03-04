"
Clase Principal de Pared
"
Class {
	#name : 'Pared',
	#superclass : 'ElementoMapa',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'entrar' }
Pared >> entrar:alguien [

	"deberemos  indicar quien entra"
	Transcript show:alguien printString ;nextPutAll: ' ha chocado con una pared';cr
]

{ #category : 'consulta' }
Pared >> esPared [ 
^true.
]

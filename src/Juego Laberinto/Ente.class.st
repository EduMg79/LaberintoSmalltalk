"
Interfaz común de los entes del juego
"
Class {
	#name : 'Ente',
	#superclass : 'Object',
	#instVars : [
		'poder',
		'vidas',
		'posicion',
		'juego'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Ente >> buscarTunel [
" self subclassResponsibility."
"nada"
"Comportamiento predetermindado"
]

{ #category : 'as yet unclassified' }
Ente >> crearNuevoLaberinto:unTunel [
]

{ #category : 'ataques' }
Ente >> esAtacadoPor: alguien [

 Transcript show: self printString ; nextPutAll: ' es atacado por ' ; nextPutAll: alguien printString.
	
	self vidas:(self vidas-alguien poder).
	
	Transcript show: 'Vidas: ' ; nextPutAll:  self vidas asString; cr.
	
	self vidas < 0 ifTrue:[ self heMuerto]. "implementacion de he muerto en bicho"
]

{ #category : 'consulta' }
Ente >> estaVivo [
 ^self vidas>0. 
]

{ #category : 'ataques' }
Ente >> heMuerto [ 
 self subclassResponsibility .
]

{ #category : 'initialization' }
Ente >> initialize [ 
 vidas:=5.
 poder:=1.
]

{ #category : 'accessing' }
Ente >> juego [

	^ juego
]

{ #category : 'accessing' }
Ente >> juego: anObject [

	juego := anObject
]

{ #category : 'as yet unclassified' }
Ente >> juegoClonarLaberinto [
^self juego clonarLaberinto .
]

{ #category : 'accessing' }
Ente >> poder [

	^ poder
]

{ #category : 'accessing' }
Ente >> poder: anObject [

	poder := anObject
]

{ #category : 'accessing' }
Ente >> posicion [

	^ posicion
]

{ #category : 'accessing' }
Ente >> posicion: anObject [

	posicion := anObject
]

{ #category : 'accessing' }
Ente >> vidas [

	^ vidas
]

{ #category : 'accessing' }
Ente >> vidas: anObject [

	vidas := anObject
]

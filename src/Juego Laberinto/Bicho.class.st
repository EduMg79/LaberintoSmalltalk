"
Principal enemigo del juego, puede ser agresivo o perezoso
"
Class {
	#name : 'Bicho',
	#superclass : 'Ente',
	#instVars : [
		'modo'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'initialization' }
Bicho >> actua [
 "self modo actua: self"
self estadoEnte actua: self
]

{ #category : 'as yet unclassified' }
Bicho >> avisar [
 self juego terminarBicho: self.
]

{ #category : 'as yet unclassified' }
Bicho >> buscarTunel [ 
 self modo buscarTunelBicho:self.
]

{ #category : 'consulta' }
Bicho >> esAgresivo [ 
 ^self modo esAgresivo.
]

{ #category : 'consulta' }
Bicho >> esPerezoso [ 
 ^self modo esPerezoso .
]

{ #category : 'initialization' }
Bicho >> iniAgresivo [
self modo: Agresivo new.
self poder: 5.
]

{ #category : 'initialization' }
Bicho >> iniPerezoso [
self modo: Perezoso new.
self poder: 1.
]

{ #category : 'accessing' }
Bicho >> modo [

	^ modo
]

{ #category : 'accessing' }
Bicho >> modo: anObject [

	modo := anObject
]

{ #category : 'accessing' }
Bicho >> obtenerOrientacion [
^self posicion  obtenerOrientacion .
]

{ #category : 'initialization' }
Bicho >> puedeActuar [
 self modo actua: self
]

{ #category : 'ataques' }
Bicho >> puedeAtacar [
	self juego buscarPersonaje: self.
]

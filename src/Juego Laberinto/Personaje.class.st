Class {
	#name : 'Personaje',
	#superclass : 'Ente',
	#instVars : [
		'nombre'
	],
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'ataques' }
Personaje >> atacar [ 
 self juego buscarBicho.
]

{ #category : 'as yet unclassified' }
Personaje >> crearNuevoLaberinto: unTunel [
 unTunel crearNuevoLaberinto: self.
]

{ #category : 'ataques' }
Personaje >> heMuerto [ 
 self juego muerePersonaje .
]

{ #category : 'as yet unclassified' }
Personaje >> irAlEste [
  self posicion irAlEste:self.
]

{ #category : 'as yet unclassified' }
Personaje >> irAlNorte [
   self posicion irAlNorte: self 
]

{ #category : 'as yet unclassified' }
Personaje >> irAlOeste [
   self posicion irAlOEste: self 
]

{ #category : 'as yet unclassified' }
Personaje >> irAlSur [
   self posicion irAlSur: self.
]

{ #category : 'accessing' }
Personaje >> nombre [

	^ nombre
]

{ #category : 'accessing' }
Personaje >> nombre: anObject [

	nombre := anObject
]

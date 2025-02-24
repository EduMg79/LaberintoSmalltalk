"
clase principal de Laberinto

"
Class {
	#name : 'Laberinto',
	#superclass : 'Contenedor',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'habitaciones' }
Laberinto >> agregarHabitacion:unaHabitacion [

	self hijos add:unaHabitacion
]

{ #category : 'habitaciones' }
Laberinto >> eliminarHabitacion:unaHabitacion [
	self hijos remove:unaHabitacion ifAbsent:["no existe ese objeto habitacion"]
]

{ #category : 'habitaciones' }
Laberinto >> obtenerHabitacion: unNum [
 ^self hijos detect:[:each | each num = unNum] ifNone: [ nil ].
]

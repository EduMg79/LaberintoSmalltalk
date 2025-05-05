Class {
	#name : 'LaberintoGui',
	#superclass : 'BorderedMorph',
	#instVars : [
		'juego',
		'win',
		'person',
		'ancho',
		'alto',
		'vidasM',
		'mAP',
		'mCP',
		'mLB',
		'personM',
		'bichosM'
	],
	#category : 'Juego Laberinto-Vista',
	#package : 'Juego Laberinto',
	#tag : 'Vista'
}

{ #category : 'as yet unclassified' }
LaberintoGui >> agregarPersonaje:unaCadena [
	self juego agregarPersonaje: unaCadena.
	self person:self juego person.
	self person addDependent: self. "attach del Observer sobre el sujeto"


]

{ #category : 'accessing' }
LaberintoGui >> alto [

	^ alto
]

{ #category : 'accessing' }
LaberintoGui >> alto: anObject [

	alto := anObject
]

{ #category : 'accessing' }
LaberintoGui >> ancho [

	^ ancho
]

{ #category : 'accessing' }
LaberintoGui >> ancho: anObject [

	ancho := anObject
]

{ #category : 'as yet unclassified' }
LaberintoGui >> asignarPuntosReales [

	| x y origen|
	origen:=70@10.
	self juego laberinto hijos do: 
			[:each |
			x := origen x + (each punto x * self ancho).
			y := origen y + (each punto y * self alto).
			each punto: x @ y.
			each extent: self ancho @ self alto.
			
			"each hijos do:[:hijo | hijo asignarPuntosReales:each]"
		]

]

{ #category : 'accessing' }
LaberintoGui >> bichosM [

	^ bichosM
]

{ #category : 'accessing' }
LaberintoGui >> bichosM: anObject [

	bichosM := anObject
]

{ #category : 'as yet unclassified' }
LaberintoGui >> calcularDimensiones [

	"Este rectangulo delimita el área sobre la que se dibuja el laberinto: 156@44 extent:810@632"

	| maxX maxY |
	maxX := 0.
	maxY := 0.
	"self origen:158@46."
	self juego laberinto hijos do: [ :each | 
		maxX := maxX max: each punto x.
		maxY := maxY max: each punto y ].
	maxX := maxX + 1.
	maxY := maxY + 1.
	self ancho: (1050 / maxX) rounded.
	self alto: (600 / maxY) rounded


]

{ #category : 'as yet unclassified' }
LaberintoGui >> calcularPosicion [
|h1|
	self juego ifNil:[	^self].
	h1:=self juego obtenerHabitacion:1.
	h1 punto:0@0.	
	h1 calcularPosicion.



]

{ #category : 'as yet unclassified' }
LaberintoGui >> dibujarContenedorRectangular: unaForma escala:unInt [

	| rec unPunto an al |
	unPunto := unaForma punto.
	an := (unaForma extent x)/unInt.
	al := (unaForma extent y)/unInt.
	rec:=BorderedMorph new extent:an@al.
	rec color:Color white.
	rec borderWidth: 2.
	self addMorph:rec.
	rec position:self position+unPunto.

]

{ #category : 'as yet unclassified' }
LaberintoGui >> dibujarLaberinto [
	self juego ifNil: [ ^ self ].
	self juego laberinto aceptar: self. "self juego dibujar:self"


]

{ #category : 'as yet unclassified' }
LaberintoGui >> iniciarJuego [
	|director ruta|
		ruta:= 'C:\Users\Usuario\Desktop\3º\'.
		director:=Director new procesar:ruta, 'laberinto4hab4bichos.json'.
		self juego:director obtenerJuego.
		self mostrarLaberinto.
		win:=self openInWindowLabeled:'LaberintoGUI'.
		self agregarPersonaje:'Pepín'. "el nombre se podría introducir desde la interfaz"
		self dibujarLaberinto.
]

{ #category : 'accessing' }
LaberintoGui >> juego [

	^ juego
]

{ #category : 'accessing' }
LaberintoGui >> juego: anObject [

	juego := anObject
]

{ #category : 'accessing' }
LaberintoGui >> mAP [

	^ mAP
]

{ #category : 'accessing' }
LaberintoGui >> mAP: anObject [

	mAP := anObject
]

{ #category : 'accessing' }
LaberintoGui >> mCP [

	^ mCP
]

{ #category : 'accessing' }
LaberintoGui >> mCP: anObject [

	mCP := anObject
]

{ #category : 'accessing' }
LaberintoGui >> mLB [

	^ mLB
]

{ #category : 'accessing' }
LaberintoGui >> mLB: anObject [

	mLB := anObject
]

{ #category : 'as yet unclassified' }
LaberintoGui >> mostrarLaberinto [
	self calcularPosicion. "calcula la posición relativa de las habitaciones respecto de la hab1"
	self normalizar. "traslación de todo el laberinto para que no haya coordenadas negativas"
	self calcularDimensiones. "repartir el ancho y alto del canvas entre las habitaciones"
	self asignarPuntosReales. "asigna las posiciones a cada contenedor (forma)"

]

{ #category : 'as yet unclassified' }
LaberintoGui >> normalizar [

	| minX minY unPunto |
	minX := 0.
	minY := 0.
	self juego laberinto hijos do: [ :each |
		minX := minX min: each punto x.
		minY := minY min: each punto y ].
	self juego laberinto hijos do: [ :each |
		unPunto := each punto.
		each punto: unPunto x + minX abs @ (unPunto y + minY abs) ]
]

{ #category : 'accessing' }
LaberintoGui >> person [

	^ person
]

{ #category : 'accessing' }
LaberintoGui >> person: anObject [

	person := anObject
]

{ #category : 'accessing' }
LaberintoGui >> personM [

	^ personM
]

{ #category : 'accessing' }
LaberintoGui >> personM: anObject [

	personM := anObject
]

{ #category : 'accessing' }
LaberintoGui >> vidasM [

	^ vidasM
]

{ #category : 'accessing' }
LaberintoGui >> vidasM: anObject [

	vidasM := anObject
]

{ #category : 'as yet unclassified' }
LaberintoGui >> visitarHabitacion:unaHab [
	self dibujarContenedorRectangular: unaHab forma escala:1.

]

{ #category : 'as yet unclassified' }
LaberintoGui >> visitarPared: unaPared [
]

{ #category : 'as yet unclassified' }
LaberintoGui >> visitarPuerta: unaPuerta [
]

{ #category : 'as yet unclassified' }
LaberintoGui >> visitarTunel: unTunel [
]

{ #category : 'accessing' }
LaberintoGui >> win [

	^ win
]

{ #category : 'accessing' }
LaberintoGui >> win: anObject [

	win := anObject
]

extends Control

var lista = [24, "palhaço" , 16, "fazenda"]
var lista1 = [ ]

func _ready():
	$Button.connect("pressed", self, "cachorro" )
	$Button1.connect("pressed", self, "amor")
	$Button2.connect("pressed", self, "alo")
	$Button3.connect("pressed", self, "mae")
	
func cahorro():
	$Label.text= str(lista)
	
func amor(): 
	lista1.append($TextEdit.text)
	$TextEdit.text= "La vie en rose"
	$Label1.text= str(lista1)

func alo():
	$Label2.text= "Bohemian Rhapsody"
func mae(): 
	$Label3.text= $TextEdit2.text
	$TextEdit2.text= "perfect"

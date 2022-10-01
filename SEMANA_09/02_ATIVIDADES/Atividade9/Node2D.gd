extends Node2D

var lista = []
var texto

func _on_Button_pressed():
	texto = float($LineEdit.text)
	lista.append(texto)
	
func _on_Button1_pressed():
	var num = len(lista)
	for y in range(num-1):
		for l in range(num-1):
			if lista[l] > lista[l+1]:
				var diferente = lista[l]
				lista[l] = lista[l+1]
				lista[l+1] = diferente 
	$Label.text = str(lista)

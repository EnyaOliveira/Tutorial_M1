extends Control
onready var display = get_node("Display")
var contas = ""
var total = 0
var valor = null
var valor1 = null
var lista = []

func _ready():
	pass 

func _on_Button7_pressed():
	display.set_text(display.get_text() + "7")

func _on_Button8_pressed():
	display.set_text(display.get_text() + "8")

func _on_Button9_pressed():
	display.set_text(display.get_text() + "9")

func _on_Button4_pressed():
	display.set_text(display.get_text() + "4")

func _on_Button5_pressed():
	display.set_text(display.get_text() + "5")

func _on_Button6_pressed():
	display.set_text(display.get_text() + "6")

func _on_Button1_pressed():
	display.set_text(display.get_text() + "1")

func _on_Button2_pressed():
	display.set_text(display.get_text() + "2")

func _on_Button3_pressed():
	display.set_text(display.get_text() + "3")

func _on_Button0_pressed():
	display.set_text(display.get_text() + "0")
	
func _on_ButtonMultiplicacao_pressed():
	contas = "Multiplicacão"
	if valor == null :
		valor = float (display.get_text())
		display.set_text("")
#	else: 
#		valor1 = (display.get_text())
#		realizar_contas("Multiplicacão")
	
func _on_ButtonDivisao_pressed():	
	contas = "Divisão"
	if valor == null :
		valor = float (display.get_text())
		display.set_text("")
#	else: 
#		valor1 = (display.get_text())
#		realizar_contas("Divisão")
		
func _on_ButtonSubtracao_pressed():
	contas = "Subtracão"
	if valor == null :
		valor = float (display.get_text())
		display.set_text("")
	#else: 
		#valor1 = (display.get_text())
		#realizar_contas("Subtracão")
		
func _on_ButtonSoma_pressed():
	contas = "Adicão"
	if valor == null :
		valor = float (display.get_text())
		display.set_text("")
	#else: 
	#	valor1 = (display.get_text())
	#	realizar_contas("Adicão")
		
func _on_ButtonIgual_pressed():
	realizar_contas(contas)
	
func _on_ButtonLimpar_pressed():
	valor = null
	valor1 = null
	display.set_text("")
	
func _on_ButtonHistorico_pressed():
	display.set_text(display.get_text() + lista)
	
func realizar_contas(contas):
	if valor1 == null:
		valor1 = float(display.get_text())
	if valor != null: 
		match contas: 
			"Divisão" :
				total = valor / valor1
				display.set_text(str(total))
			"Multiplicacão" :
				total = valor * valor1
				display.set_text (str(total))
			"Subtracão":
				total = valor - valor1
				display.set_text(str(total))
			"Adicão":
				total = valor + valor1
				display.set_text(str(total))
				lista.append(total)
	valor = null
	valor1 = null 

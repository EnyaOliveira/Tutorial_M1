extends Node2D

var teste = false
var valor = 0
var numero = 0 #Não pode usar acento para declarar uma variavel
var lista = []#É preciso declarar um var para a lista funcionar
var nome #era necessário declarar nome como uma variável


func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text)#O acento não é permitido
	$Label.text = str(numero)
	lista = []

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #Numero = numero
		lista.append(numero)
	$Label.text = str(lista)


func _on_Button3_pressed():
	var cont=0
		#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for i in range(len(lista)): #troquei o while por um for para garantir o acesso a lista, o while não funcionaria pois seria enquanto a lista for acessada
		if(lista[i]%2==1):
			cont+=1
			
	if(cont!=0):
			$Label2.text = str(nome) + "baldo"
	else: #para algo acontecer mesmo que a situação não seja true 
			$Label2.text = "A lista não tem números ímpar"

func _on_LineEdit2_text_changed(new_text):
	nome = new_text

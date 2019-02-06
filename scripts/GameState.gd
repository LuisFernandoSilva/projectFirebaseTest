extends Node

var firebase

func _ready():
	firebase = Engine.get_singleton("FireBase")
	firebase.initWithFile("res://godot-firebase-config.json", get_instance_id())
	
	#faz o registro de email
	#firebase.email_create_account("teste@teste.com", "12345678")
	#faz o login
	firebase.email_sign_in("teste@teste.com", "12345678")
	#firebase.email_sign_out()
	
func _receive_message(tag, from, key, data):
	if tag == "FireBase":
		if from == "E&P":
			if key == "CreateAccount":
				print("Resultado da criação:", data)
			elif key == "SignIn":
				print("Resultado do login:", data) #se o login for invalido retorna false
		elif from == "Auth":
			if key == "EmailLogin":
				if data:
					print("logado com sucesso")
				else :
					print("saiu do jogo")
	
	
	
	
	
	
	
	#adiciona itens em coleçoes/
	#var dic ={"nome": "daniel", "sobrenome": "henrique", "idade": 20}
	#firebase.set_document("pessoas", "pessoa1", dic)
	#var dic2 ={"nome": "joao", "sobrenome": "silva", "idade": 40}
	#firebase.set_document("pessoas", "pessoa2", dic2)
	#var dic3 ={"nome": "luis", "sobrenome": "silva", "idade": 30}
	#firebase.set_document("pessoas", "pessoa3", dic3)
	#lista um item de uma coleção especifica
	#firebase.set_listener("pessoas", "pessoa1")
	#firebase.remove_listener("pessoas", "pessoa1")
	
	 #mostra mensagem de alteraçao de dados
#func _receive_message(tag, from, key, data):
	#if tag == "FireBase":
		#if from =="FireStore":
			#if key=="SnapshotData":
				#print(data)
				#print(data["idade"])
	


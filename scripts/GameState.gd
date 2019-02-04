extends Node

var firebase

func _ready():
	firebase = Engine.get_singleton("FireBase")
	firebase.initWithFile("res://godot-firebase-config.json", get_instance_id())
	
	#var dic ={"nome": "daniel", "sobrenome": "henrique", "idade": 20}
	#firebase.set_document("pessoas", "pessoa1", dic)
	#var dic2 ={"nome": "joao", "sobrenome": "silva", "idade": 40}
	#firebase.set_document("pessoas", "pessoa2", dic2)
	firebase.set_listener("pessoas", "pessoa1")
	firebase.remove_listener("pessoas", "pessoa1")
	
func _receive_message(tag, from, key, data):
	if tag == "FireBase":
		if from =="FireStore":
			if key=="SnapshotData":
				print(data)
				#print(data["idade"])
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

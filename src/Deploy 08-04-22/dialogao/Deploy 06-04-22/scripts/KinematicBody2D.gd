extends KinematicBody2D 

var velocidade = Vector2.ZERO 
var contagem_pulo = 0 # 
var normal = Vector2(0,-1)
var run = 1 
var direcao_player = 0 
var parado = 1 
#var vida = 6
var viloes = ["vilao1","vilao_2","vilao_3","vilao_4","vilao_5","CigarroBrabo","Cigas"]
 
var collision 

#andar (movimento horizontal controlado pelo jogador)
func move():
	ScriptGlobal.PlayerPosition = self.position
	#condição para que quando a tecla control seja pressionada, o personagem se mantenha parado para atirar
	if Input.is_action_pressed("ui_parado"):
		parado = 0
	else:
		parado = 1
		
	#condição de ao identificar que determinadas entradas estão precionadas o vetor "velocidade" assume um valor no eixo "X" multiplicado pela variavel "parado" e "run"
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_d"): #seta para direita
		direcao_player = 0 
		velocidade.x = 500*parado*run
		get_node("Sprite").set_flip_h(false)
		
		#reproduz animação do personagem se estiver andando e no chão
		if is_on_floor() and parado == 1:
			get_node("Sprite/AnimationPlayer").play("andando")
		else:
			get_node("Sprite/AnimationPlayer").play("RESET")
				
	elif Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_a"): #seta para esquerda
		velocidade.x = -500*parado*run
		direcao_player = 1
		get_node("Sprite").set_flip_h(true) #espelha a imagem do personagem horizontalmente quando o personagem anda para trás
			
		#reproduz animação do personagem se estiver andando e no chão
		if is_on_floor() and parado == 1:
			get_node("Sprite/AnimationPlayer").play("andando")
		else:
			get_node("Sprite/AnimationPlayer").play("RESET")
		
	else:
		velocidade.x = 0
		get_node("Sprite/AnimationPlayer").play("RESET")
	
	if Input.is_action_pressed("ui_shift"):   #quando "shift" é precionado a variavel "run" assume o valor da variavel global "tenis"
		run = ScriptGlobal.tenis   #"tenis" é uma variavel global que assume o valor 2 quando o personagem passa pelo ícone do tenis(area 2D)
	else:
		run = 1
		
func pulo():
	#identifica entrada de seta para cima e faz o vetor velocidade assumir o valor -400 no eixo "y"
	#para personagem não poder pular o quanto quiser e sair voando, função só é valida se "contagem_pulo"(variavel que aumenta 1 em seu valor a cada vez que o personagem pula) for menor do que o limite de pulos que o personagem pode dar 
	if (Input.is_action_just_pressed("ui_up") and contagem_pulo < ScriptGlobal.tenis) or (Input.is_action_just_pressed("ui_w") and contagem_pulo < ScriptGlobal.tenis):#"contagem_pulo" < "tenis" para o limite de pulos ser 1 ao iniciar o jogo e passar a ser 2 depois que o personagem pega o tenis
		$somPulo.play()
		velocidade.y = -1000
		contagem_pulo += 1
		
#função que determina a vida do personagem
func vida():
	
	
	#reconhece contato lateral com os monstrinhos:
#	for i in range(get_slide_count() -1):
#		collision = get_slide_collision(i)
#
#		if (ScriptGlobal.vilaoHit == true or (is_on_wall() and collision.collider.name == "vilao")) or (ScriptGlobal.vilao2Hit == true or (is_on_wall() and collision.collider.name == "vilao_2")):
#			ScriptGlobal.dano = true #"dano" variavel booleana global que armazena a informação de que o personagem está no processo de perder vida 
#		else:
#			ScriptGlobal.dano = false
#
#	if ScriptGlobal.dano == true:
#		#variavel "life" reduz 1 quando "dano" é verdadeiro
#		ScriptGlobal.life -= 1
#
#
#
#	#personagem pisca enquanto perde vida
#		get_node("Sprite").visible = false
#	else:
#		get_node("Sprite").visible = true
#
	#"vida" é o nó que contém a barra de vida; assume valor de "life"
	get_node("vida").get_child(0).value = ScriptGlobal.life
	
	
	#encerrar a fase quando a vida chega à zero
	if ScriptGlobal.life<=0 or velocidade.y > 2000:
		DialogoGlobal.inicioJogoTriggered = false
		DialogoGlobal.pegouTenisTriggered = false
		DialogoGlobal.antesArmaTriggered = false
		DialogoGlobal.morreSmokTriggered = false
		DialogoGlobal.entraBossFightTriggered = false
		DialogoGlobal.mataBossTriggered = false
		DialogoGlobal.morreParaBossTriggered = false
		get_tree().change_scene("res://scenes/game_over.tscn")

#função do tiro
func tiro():
	if Input.is_action_just_pressed("ui_shoot"):
		$somTiro.play()
		var chama_a_bala = preload("res://scenes/Bala.tscn")
		var bala = chama_a_bala.instance()
		
		bala.pega_direcao(direcao_player)
		
		if direcao_player == 0:
			bala.position.x = self.position.x + 35
			bala.position.y = self.position.y - 20
			
		else:
			bala.position.x = self.position.x - 70
			bala.position.y = self.position.y - 20
			
		get_parent().add_child(bala)

	
#função do godot para rodar os processos físicos
func _physics_process(_delta):
	# $CanvasLayer/vida.value = vida
	# gravidade: aceleração constante para baixo:
	velocidade.y += 40
#	
	if ScriptGlobal.arma == false:
		
		tiro()
	
	#funções programadas a cima; linha 11 e 39:
	
	move()
	
	pulo()
	
	#função do godot que da movimento ao objeto; ele assume o valor do vetor "velocidade", que esta programado a cima, e o "normal"
	move_and_slide(velocidade,normal)
	
	#função do godot que reconhece contato com o chão; zera contagem de pulo e faz "velocidade" assumir valor 0 quando esta no chão, sem isso, "velocidade" continua aumentando para baixo e o valor acumulado fica sendo armazenado, isso daria problema em movimentações futuras
	if is_on_floor():
		
		contagem_pulo = 0
		velocidade.y = 0
	
	#função do godot que reconhece contato com o teto; faz "velocidade" assumir um vetor de valo 10 para baixo, da impressão de que o personagem "pinga" quando bate
	if is_on_ceiling():
		
		velocidade.y = -10
		
	#função vida; programado linha (47):
	vida()
	if ScriptGlobal.taValendo == true:
		$Camera2D2.clear_current()
		
	# print(ScriptGlobal.vidaCigarro)
		
#função do godot: recebe sinal da area 2D "tenis" quando o personagem passa por ela
func _on_Area2D_body_entered(_body):
	#roda dialogo tenis
	if DialogoGlobal.pegouTenisTriggered == false:
		DialogoGlobal.create_dialog("res://Dialogs/pegouTenis.json")
		DialogoGlobal.pegouTenisTriggered = true
	else:
		pass
		
	if _body == self:
		ScriptGlobal.tenis = 2 #variavel global "tenis" assume valor 2 para habilitar corrida e pulo duplo

#função quando pega a arma
func _on_arma_body_entered(_body):
	ScriptGlobal.arma = true

#função do colisor que volta para o menu
func _on_VoltaMenu_body_entered(_body):
	if _body == self:
		get_tree().change_scene("res://scenes/menu fase.tscn")

#
#func _on_Area2D2_body_entered(body):
#	ScriptGlobal.life-=1
#
#
#
#
#func _on_AreaVilao_body_entered(body):
#	ScriptGlobal.life-=1


func _on_AreaPlayer_body_entered(body):
	if body != self:
		for i in viloes:
			if i in body.name:
		
				print("aaaaa")
				ScriptGlobal.life -= 1

func _on_tpBossFight_body_entered(body):
	if body == self:
		get_tree().change_scene("res://scenes/bossFight.tscn")
		ScriptGlobal.fase = 2

#função que roda o primeiro dialogo
func _on_EntrouFase_body_entered(body):
	if DialogoGlobal.inicioJogoTriggered == false:
		DialogoGlobal.create_dialog("res://Dialogs/Entrada.json")
		DialogoGlobal.inicioJogoTriggered = true
	else:
		pass
	
	if body == self:
		ScriptGlobal.entrouJogo = true

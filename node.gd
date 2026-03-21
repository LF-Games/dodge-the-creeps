extends Node

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = !get_tree().paused

#  Sistema de Pause 
#  Script para pausar e despausar o jogo apetando (ESC)
#---------------------------------------------------------------
#  Observações:
#  Este node deve estar com "Modo de Processamento = Sempre"
#  para continuar funcionando mesmo com o jogo pausado
#  A action "pause" deve estar configurada no Input Map
#---------------------------------------------------------------

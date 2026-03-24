extends CanvasLayer

signal start_game

func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageTimer.start()


func show_game_over():
	show_message("Game Over")
	await $MessageTimer.timeout
	$MessageLabel.text = "Dodge the\nCreeps"
	$MessageLabel.show()
	await get_tree().create_timer(1).timeout
	$StartButton.show()

var min_font_size = 24
var max_font_size = 64

func update_score(score):
	$ScoreLabel.text = str(score)
	var new_size = min_font_size + (score * 2)
	new_size = min(new_size, max_font_size)
	$ScoreLabel.label_settings.font_size = new_size

func _on_StartButton_pressed():
	$StartButton.hide()
	start_game.emit()


func _on_MessageTimer_timeout():
	$MessageLabel.hide()

extends Area

var open = false
var hasBeenOpened = false

onready var animation_player = $DoorModel/AnimationPlayer

func _on_door_body_entered(body):
	if not open and body is Player:
		animation_player.play("doorsimple_opening")
		hasBeenOpened = true
		open = true
	elif not open and hasBeenOpened:
		animation_player.play("doorsimple_opening")
		open = true

extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_cofre_body_entered(body):
	$Label.visible = true
	$Sprite.visible = false
	get_tree().change_scene("res://Nivell 2.tscn")
	
	

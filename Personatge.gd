extends KinematicBody2D
var velocitat = 200
var moviment = Vector2.ZERO
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 0
	scale = Vector2(1,1)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var desplacament = Vector2.ZERO 
	if Input.is_action_pressed("ves_dreta"):
		desplacament = Vector2.RIGHT
		
	if Input.is_action_pressed("ves_esq"):
		desplacament += Vector2.LEFT 
		
	if Input.is_action_pressed("ves_baix"):
		desplacament += Vector2.DOWN
		
	if Input.is_action_pressed("ves_amunt"):
		desplacament += Vector2.UP
		
	if Input.is_action_just_pressed("rota_90_dreta"):
		rotation_degrees += 90
		 
	if Input.is_action_just_pressed("rota_90_esq"):
		rotation_degrees -= 90 
	
	moviment = desplacament.normalized() * velocitat
	move_and_slide(moviment)




		


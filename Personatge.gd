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



func _on_cofre_bo_body_entered(body):
	if body.name == "Personatge":
		$"../cofre_bo".visible = false
		$"../Label".visible = true
		get_tree().change_scene("res://Nivell 2.tscn")
		


func _on_cofre2_body_entered(body):
	$"../Label2".visible = true
	$"../cofre2".visible = false

func _on_cofre3_body_entered(body):
	$"../Label3".visible = true
	$"../cofre3".visible = false

func _on_cofre4_body_entered(body):
	$"../Label4".visible = true
	$"../cofre4".visible = false

func _on_cofre5_body_entered(body):
	$"../Label5".visible = true
	$"../cofre5".visible = false

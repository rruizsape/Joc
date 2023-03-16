extends Area2D


func _ready():
	$ColorRect.color = Color(0.6, 0.4, 0.7) # Replace with function body.
	

func _on_Detector_body_entered(body):
	$ColorRect.color = Color(0.2, 0.8, 0.5)


func _on_Detector_body_exited(body):
	$ColorRect.color = Color(0.6, 0.4, 0.7) # Replace with function body.

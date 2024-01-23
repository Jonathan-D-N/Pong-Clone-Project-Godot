extends CharacterBody2D

# Speed of movement
const SPEED = 300.0

#Character's velocity
#var Velocity = Vector2()

func _physics_process(delta):
	#Reset Y Velocity
	var direction = 0
	
	#Move up with W key
	if Input.is_action_pressed("ui_up"):
		direction -= 1
		
	#Move down with S key
	if Input.is_action_pressed("ui_down"):
		direction += 1
		
		#Update the linear_velocity
	linear_velocity.y = direction * SPEED
	move_and_slide()

extends RigidBody2D

@export var speed = 40000
@export var ball: Ball

func _physics_process(delta):
	var direction = (ball.position - position).normalized()
	linear_velocity.y = direction.y * speed * delta
	linear_velocity.x = 0
	#var movement = Vector2.ZERO	
	#if Input.is_action_pressed("p2_move_up"):
	#	movement =  Vector2.UP
	#elif Input.is_action_pressed("p2_move_down"):
	#	movement = Vector2.DOWN
	#
	#linear_velocity = movement * speed

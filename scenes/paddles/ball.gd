extends RigidBody2D

class_name Ball

@export var initial_speed = 20 
@export var speed_multiplier = 1.1
var ball_speed = initial_speed

func _ready():
	start_ball()
	
func _physics_process(delta):
	var collision = move_and_collide(linear_velocity * ball_speed * delta)
	
	if collision:
		linear_velocity = linear_velocity.bounce(collision.get_normal()) * speed_multiplier
	
func start_ball():
	randomize()
	
	linear_velocity.x = [-1, 1][randi() % 2] * initial_speed
	linear_velocity.y = [-.8, .8][randi() % 2] * initial_speed

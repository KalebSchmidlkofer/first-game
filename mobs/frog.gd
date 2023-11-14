extends CharacterBody2D
var SPEED = 50
var gravity = ProjectSettings.get_setting('physics/2d/default_gravity')
var player
var chase = false

func _ready():
	$AnimatedSprite2D.play('idle')

func _physics_process(delta):
	# Frog Gravity
	velocity.y += gravity * delta
	if chase:
		if $AnimatedSprite2D.animation != 'death':
			$AnimatedSprite2D.play("jump")
			player = $"../../Player/Player"
			var direction = (player.position - self.position).normalized()
			if direction.x > 0:
				$AnimatedSprite2D.flip_h = true
			else:
				$AnimatedSprite2D.flip_h = false
			velocity.x = direction.x * SPEED
	else:
		if $AnimatedSprite2D.animation != 'death':
			$AnimatedSprite2D.play('idle')
		velocity.x = 0
	move_and_slide()
	
	
func _on_player_detection_body_entered(body):
	if body.name == "Player":
		pass
		chase = true
func _on_player_detection_body_exited(body):
	if body.name == "Player":
		chase = false

func _on_kill_frog_body_entered(body):
	if body.name == "Player":
		death()
		player.velocity.y -= 500


func _on_player_collision_body_entered(body):
	if body.name == "Player":
		Game.playerHP -= 3
		death()
		
func death():
	Game.Gold += 5
	chase = false
	$AnimatedSprite2D.play('death')
	await $AnimatedSprite2D.animation_finished
	self.queue_free()




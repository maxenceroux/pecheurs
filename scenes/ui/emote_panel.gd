extends Panel
class_name EmotesPanel

@onready var animated_sprite: AnimatedSprite2D = $Emote/AnimatedSprite2D



func set_emote(animation_name: String) -> void:
	
	print(animation_name)
	animated_sprite.play(animation_name)

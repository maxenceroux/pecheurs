extends BaseGameDialogueBalloon
class_name GameDialogueBalloon

var queued_emote: String = ""

func _ready():
	await get_tree().process_frame  # Ensure scene is fully initialized before accessing nodes

	var emotes_panel: EmotesPanel = get_node_or_null("Balloon/Panel/Dialogue/HBoxContainer/EmotesPanel")

	if emotes_panel == null:
		print("no emotes panel")
		push_error("emotes_panel is null! Check node path.")
		return

	if queued_emote != "":
		print("Setting emote:", queued_emote)
		emotes_panel.set_emote(queued_emote)
	else:
		print("No emote queued.")

func queue_emote(emote_name: String) -> void:
	queued_emote = emote_name

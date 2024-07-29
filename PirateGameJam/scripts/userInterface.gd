extends CanvasLayer

@onready var chamomileCount = $Control/chamoile/Label
@onready var mintCount = $Control/mint/Label
@onready var mushroomCount = $Control/mushroom/Label
@onready var rich_text_label = $TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.connect("chamomile_change", update_chamomile_text)
	Globals.connect("mint_change", update_mint_text)
	Globals.connect("mushroom_change", update_mushroom_text)
	update_chamomile_text()
	update_mint_text()
	update_mushroom_text()

func update_chamomile_text():
	chamomileCount.text = str(Globals.chamomileCount)
func update_mint_text():
	mintCount.text = str(Globals.mintCount)
func update_mushroom_text():
	mushroomCount.text = str(Globals.mushroomCount)



func _on_button_button_down():
	if !rich_text_label.visible:
		rich_text_label.visible = true
	else:
		rich_text_label.visible = false

extends Node
#Script of the Settings Sceen

var items = {"items":[
	{"name":"Placeholder name", "price":"0", "description": "Placeholder description 1", "owned": null},
	{"name":"Placeholder name 2", "price":"1", "description": "Placeholder description 2", "owned": null},
	{"name":"Placeholder name 2", "price":"2", "description": "Placeholder description 3", "owned": null},
	{"name":"Placeholder name 3", "price":"300", "description": "Placeholder description 4", "owned": null}
]}

# Will add code to check what items a player has when the player class is done
func _on_back_to_menu_pressed():
	get_tree().change_scene_to_file("res://Menu/main_menu.tscn")

func _ready():
	for item in items["items"]:
		var ItemName = item["name"]
		var ItemPrice = item["price"]
		var ItemDescription = item["description"]
		
		var ItemLabel = Label.new()
		
		var LabelText = "Name: %s\n%s\nPrice: $%s"
		var FormattedLabelText = LabelText % [ItemName, ItemDescription, ItemPrice]
		ItemLabel.text = FormattedLabelText
		ItemLabel.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		
		var PurchaseButton = Button.new()
		
		PurchaseButton.text = "Buy"
		PurchaseButton.pressed.connect(self._on_purchase_pressed)
		
		add_child(ItemLabel)
		add_child(PurchaseButton)

func _on_purchase_pressed():
	buy("test")

func buy(item):
	print("Button works")

func _process(delta):
	pass


#Button to return to Main Menu


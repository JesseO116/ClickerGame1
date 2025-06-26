class_name LabelTotalPets
extends Label
## Display the current amount of pets available.


## Temporary function to update the text.
func _process(_delta: float) -> void:
	update_text()


## Updates the text the reflect the current amount of pets.
func update_text() -> void:
	text = "Total Pets : %s" %Game.ref.data.pets

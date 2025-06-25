class_name UserInterface
extends Control


enum Views {
	PROTO_CLICKER,
	PROTO_GENERATOR,
}

signal navigation_requested(view : Views)


func _on_gen_pets_link_pressed() -> void:
	navigation_requested.emit(Views.PROTO_GENERATOR)

func _on_clicker_link_pressed() -> void:
	navigation_requested.emit(Views.PROTO_CLICKER)

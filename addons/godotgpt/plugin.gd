@tool
extends EditorPlugin

var dock

func _enter_tree():
	dock = preload("res://addons/godotgpt/dock.tscn").instantiate()
	add_control_to_dock(DOCK_SLOT_RIGHT_BR, dock)


func _exit_tree():
	remove_control_from_docks(dock)
	dock.free()

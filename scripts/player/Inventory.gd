class_name Inventory
extends Node

var items: Dictionary = {}

func add_item(item_id: String, amount: int = 1) -> void:
	if amount <= 0:
		return

	items[item_id] = items.get(item_id, 0) + amount

func remove_item(item_id: String, amount: int = 1) -> bool:
	if not items.has(item_id):
		return false

	if items[item_id] < amount:
		return false

	items[item_id] -= amount

	if items[item_id] <= 0:
		items.erase(item_id)

	return true

func has_item(item_id: String, amount: int = 1) -> bool:
	return items.get(item_id, 0) >= amount

func get_amount(item_id: String) -> int:
	return items.get(item_id, 0)
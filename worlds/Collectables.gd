extends Node2D

var Cherry = preload('res://collectables/cherry.tscn')
var Gem = preload("res://collectables/gem.tscn")

func _ready():
	var cherryTemp = Cherry.instantiate()
	var gemTemp = Gem.instantiate()
	cherryTemp.position = Vector2(15, 325)
	gemTemp.position = Vector2(65, 325)
	$Node2D.add_child(cherryTemp)
	$Node2D.add_child(gemTemp)
	

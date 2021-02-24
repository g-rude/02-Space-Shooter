extends Node2D

var max_meteors = 4
var Meteor = load("res://Meteor/Meteor.tscn")
var Meteor2 = load("res://Meteor/Meteor2.tscn")

func _ready():
	randomize()

func _physics_process(delta):
	if get_child_count() < max_meteors:
		if randf() < 0.005:
			var meteor = Meteor.instance()
			meteor.position.y = -100
			meteor.position.x = randi() % 1024
			add_child(meteor)
	if get_child_count() < max_meteors:
		if randf() < 0.005:
			var meteor2 = Meteor2.instance()
			meteor2.position.y = -100
			meteor2.position.x = randi() % 1024
			add_child(meteor2)

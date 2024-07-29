extends Node

signal chamomile_change
signal mint_change
signal mushroom_change

var shadowEnabled = false
var caveSwitch = false
var mushroomCauldronCount = 0
var mintCauldronCCount = 0
var chamomileCauldronCCount = 0


var chamomileCount = 0:
	get:
		return chamomileCount
	set(value):
		chamomileCount = value
		chamomile_change.emit()
var mintCount = 0:
	get:
		return mintCount
	set(value):
		mintCount = value
		mint_change.emit()
var mushroomCount = 0:
	get:
		return mushroomCount
	set(value):
		mushroomCount = value
		mushroom_change.emit()

var chamomiles = [
	Vector2(100, 125),
	Vector2(600, 0),
	Vector2(1200, 150)
]

var mints = [
	Vector2(-1550, 150),
	Vector2(-1750, 0),
	Vector2(-2140, 145)
]

var mushrooms = [
	Vector2(250, 0),
	Vector2(250, 75),
	Vector2(250, 150)
]

func add_to_cauldron():
	chamomileCauldronCCount += chamomileCount
	mintCauldronCCount += mintCount
	mushroomCauldronCount += mushroomCount
	mushroomCount = 0
	chamomileCount = 0
	mintCount = 0
	print("Added to cauldron" )

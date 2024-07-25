extends Node

var caveSwitch = false
var mushroomCount = 0
var mushroomCauldronCount = 0
var mintCount = 0
var mintCauldronCCount = 0
var chamomileCount = 0
var chamomileCauldronCCount = 0
var ingredientsList = {
	"One": Vector2(100, 100),
	"Two": Vector2(300, 100),
	"Three": Vector2(500, 100)
}

var insideHouseStuff = {
	"One": Vector2(350, 550),
	"Two": Vector2(550, 550),
	"Three": Vector2(770, 550)
}
var ingredients_collected = false

func add_to_cauldron():
	chamomileCauldronCCount += chamomileCount
	mintCauldronCCount += mintCount
	mushroomCauldronCount += mushroomCount
	mushroomCount = 0
	chamomileCount = 0
	mintCount = 0
	print("Added to cauldron" )
	if chamomileCauldronCCount == 3 and mintCauldronCCount == 3 and mushroomCauldronCount == 3:
		print("quest done")

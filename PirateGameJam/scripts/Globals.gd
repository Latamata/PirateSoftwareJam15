extends Node


var mushroomCount = 0
var mushroomCauldronCount = 0
var mintCount = 0
var mintCauldronCCount = 0
var chamomileCount = 0
var chamomileCauldronCCount = 0

func add_to_cauldron():
	chamomileCauldronCCount += chamomileCount
	mintCauldronCCount += mintCount
	mushroomCauldronCount += mushroomCount
	mushroomCount = 0
	chamomileCount = 0
	mintCount = 0
	print("chamomileCauldronCCount",chamomileCauldronCCount)
	print("mintCauldronCCount",mintCauldronCCount)
	print("mintCauldronCCount",mushroomCauldronCount)

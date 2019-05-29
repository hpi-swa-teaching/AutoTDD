ui-simulation
simulateButtonPress: aLabel
	| button |
	"self subject findByLabel does not work on our buttons"
	button := MTFMorphWrapper newWith: ((self subject findByClass: PluggableButtonMorphPlus) morphs select: [:morph | morph label = aLabel]).
	button leftClick.
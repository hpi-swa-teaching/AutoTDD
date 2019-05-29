ui-simulation
findWindowByTitle: aLabel
	^ MTFMorphWrapper newWith: ((self subject findByClass: PluggableSystemWindow) morphs select: [:morph | morph labelString = aLabel]).

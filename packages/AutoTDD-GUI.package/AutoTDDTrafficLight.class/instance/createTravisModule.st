components
createTravisModule

	| module |
	module := TravisCITrafficLightModule new
		soundPlayer: self soundPlayer;
		position: self position + (75 @ 10);
		yourself.
	self
		addMorph: module;
		travis: module
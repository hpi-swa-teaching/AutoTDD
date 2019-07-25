components
createTravisModule
	
	| module |
	
	module := TCITrafficLightModule new
		soundPlayer: self soundPlayer;
		position: self position + (75 @ 10);
		yourself.
	self
		addMorph: module;
		travis: module
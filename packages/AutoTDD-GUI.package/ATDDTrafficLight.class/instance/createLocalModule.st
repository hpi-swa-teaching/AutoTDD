components
createLocalModule

	| module |
	module := TARTrafficLightModule new
		soundPlayer: self soundPlayer;
		position: self position + (5 @ 10);
		yourself.
	self
		addMorph: module;
		local: module
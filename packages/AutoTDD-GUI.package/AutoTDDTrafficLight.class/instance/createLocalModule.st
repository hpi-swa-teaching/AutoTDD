components
createLocalModule

	| module |
	module := TarTrafficLightModule new
		soundPlayer: self soundPlayer;
		position: self position + (5 @ 10);
		yourself.
	self addMorph: module.
	self local: module
components
createLocalModule

	| module |
	module := TarTrafficLightModule new
		tl: self;
		position: self position + (5 @ 10);
		yourself.
	self addMorph: module.
	self local: module
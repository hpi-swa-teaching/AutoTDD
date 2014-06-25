tests
testQuit

	|world|
	world := sut owner.
	sut quitButtonClicked.
	self deny: (world submorphs includes: sut). 
tests
testQuit

	|world|
	world := sut owner.
	self assert: (world submorphs includes: sut).
	sut quitButtonClicked.
	self deny: (world submorphs includes: sut). 
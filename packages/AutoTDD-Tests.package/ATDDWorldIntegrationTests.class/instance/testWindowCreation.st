tests
testWindowCreation
	self removeWindows.
	ATDDBrowser open.
	self assert: self openedWindows size = 1.
	self removeWindows
accessing
pause
	self process ifNotNil: [self process suspend].
	self paused: true.
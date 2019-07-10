behaviour
pause
	self process ifNotNil: [
		self process terminate.
		self process: nil.
	].
	super pause.
	self updateStatus
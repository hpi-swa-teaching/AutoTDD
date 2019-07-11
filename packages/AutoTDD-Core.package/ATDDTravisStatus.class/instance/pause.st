behaviour
pause
	self terminateProcess.
	super pause.
	self updateStatus
building
createWindow 

	self window: SystemWindow new.
	self window
		model: self;
		setLabel: self label.
	
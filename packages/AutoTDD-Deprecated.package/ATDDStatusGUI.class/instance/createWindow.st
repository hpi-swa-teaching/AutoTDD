building
createWindow
	
	self
		window: (SystemWindow new
			model: self;
			setLabel: self label;
			yourself)
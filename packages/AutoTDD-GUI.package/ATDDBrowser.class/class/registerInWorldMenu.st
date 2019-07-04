class initialization
registerInWorldMenu
	self environment at: #TheWorldMenu ifPresent: [ :class |
		class registerOpenCommand: (Array 
			with: self worldMenuLabel
			with: (Array
				with: self
				with: #open)) ].
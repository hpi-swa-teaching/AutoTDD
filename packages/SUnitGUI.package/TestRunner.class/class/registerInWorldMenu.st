initialization
registerInWorldMenu
	self environment at: #TheWorldMenu ifPresent: [ :class |
		class registerOpenCommand: (Array 
			with: 'Test Runner' 
			with: (Array
				with: self
				with: #open)) ].
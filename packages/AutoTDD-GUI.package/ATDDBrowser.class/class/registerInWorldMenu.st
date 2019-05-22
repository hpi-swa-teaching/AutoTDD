class initialization
registerInWorldMenu
	self environment at: #TheWorldMenu ifPresent: [ :class |
		class registerOpenCommand: (Array 
			with: self defaultWorldMenuLabel
			with: (Array
				with: self
				with: #open)) ].
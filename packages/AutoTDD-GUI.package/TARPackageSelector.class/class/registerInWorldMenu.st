instance creation
registerInWorldMenu
	self environment at: #TheWorldMenu ifPresent: [ :class |
		class registerOpenCommand: (Array 
			with: 'Test Auto Runner' 
			with: (Array
				with: self
				with: #open)) ].
utility
openTravisDialog
	
	self useTravis ifFalse: [ ^ self ].
	TravisCIGUI openWithData: self travisData
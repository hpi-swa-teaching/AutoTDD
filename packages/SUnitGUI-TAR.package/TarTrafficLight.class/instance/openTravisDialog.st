as yet unclassified
openTravisDialog
	
	self useTravis ifFalse: [ ^ self ].
	TravisCIGUI openWithData: self data
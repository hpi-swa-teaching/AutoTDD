as yet unclassified
openLocalDialog
	
	self useLocal ifFalse: [ ^ self ].
	TarResultGUI openWithData: self localData
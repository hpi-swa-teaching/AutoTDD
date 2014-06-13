as yet unclassified
openLocalDialog
	
	self useLocal ifFalse: [ ^ self ].
	TarGUI openWithData: self localData
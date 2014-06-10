submorphs-add/remove
delete
	
	self useTravis: false.
	self localOffButtonClicked.
	self class instances
		remove: self
		ifAbsent: [ ].
	super delete
submorphs-add/remove
delete
	
	self localOffButtonClicked.
	self class instances
		remove: self
		ifAbsent: [ ].
	super delete
submorphs-add/remove
delete
	self offButtonClicked.
	self class instances
		remove: self
		ifAbsent: [ ].
	super delete
submorphs-add/remove
delete
	
	self modules do: [ :each | each delete ].
	super delete
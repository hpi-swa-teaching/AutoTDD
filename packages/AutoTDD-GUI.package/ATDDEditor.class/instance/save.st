action
save
	
	self outClosure ifNotNil: [ self outClosure value: self target ].
	self applyChanges.
	self acceptTargetName.
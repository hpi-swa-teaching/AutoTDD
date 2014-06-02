accessing
selectedBuild: aNumber

	selectedBuild := aNumber.
	self 
		changed: #selectedBuild;
		changedSelectedBuild
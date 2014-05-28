instance creation
newForRepository: aString

	| gui |
	gui := self new.
	gui
		repository: aString;
		extent: gui extentConst;
		setLabel: gui label;
		update;
		createComponents.
	^ gui
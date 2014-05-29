instance creation
newForRepository: aString

	| gui |
	gui := self new.
	^ gui
		repository: aString;
		update;
		extent: gui extentConst;
		setLabel: gui label;
		createComponents;
		yourself
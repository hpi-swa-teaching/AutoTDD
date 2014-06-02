instance creation
newForRepository: aString

	| gui |
	gui := self new.
	^ gui
		repository: aString;
		setLabel: gui label;
		update;
		createComponents;
		yourself
opening
openForRepository: aString
	
	| gui |
	self validate: aString.
	gui := self newForRepository: aString.
	gui 
		openInWorld;
		extent: gui extentConst;
		changedValues
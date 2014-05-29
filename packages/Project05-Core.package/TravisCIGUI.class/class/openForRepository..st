opening
openForRepository: aString
	
	| gui |
	gui := self newForRepository: aString.
	gui 
		openInWorld;
		extent: gui extentConst;
		update
opening
openForRepository: aString
	
	| gui |
	gui := self newForRepository: aString.
	gui 
		openInWorld;
		update
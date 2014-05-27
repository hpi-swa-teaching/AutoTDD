opening
openForRepository: aString
	
	| gui |
	gui := self newForRepository: aString.
	ToolBuilder open: gui.
	gui changed: #stateColor
actions
collectCoverageFor: methods
	| wrappers suite |
	wrappers := methods collect: [ :each | TestCoverage on: each ].
	suite := self
		reset;
		suiteAll.
	
	[ wrappers do: [ :each | each install ].
	[ self runSuite: suite ] ensure: [ wrappers do: [ :each | each uninstall ] ] ] valueUnpreemptively.
	wrappers := wrappers reject: [ :each | each hasRun ].
	wrappers isEmpty 
		ifTrue: 
			[ UIManager default inform: 'Congratulations. Your tests cover all code under analysis.' ]
		ifFalse: 
			[ ToolSet 
				browseMessageSet: (wrappers collect: [ :each | each reference ])
				name: 'Not Covered Code (' , (100 - (100 * wrappers size // methods size)) printString , '% Code Coverage)'
				autoSelect: nil ].
	self saveResultInHistory
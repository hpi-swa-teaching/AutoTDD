parsing
parseXMLFromLog: aString
	
	| start s realStart |
	
	start := aString findString: 'travis_fold:start:junit_xml' startingAt: 1.
	start = 0 ifTrue: [ ^ XMLDocument new ].
	s := aString
		copyFrom: start
		to: (aString
				findString: 'travis_fold:end:junit_xml'
				startingAt: start)
			- 1.
	realStart := (s indexOf: $<) - 1.
	
	^ XMLDOMParser parseDocumentFrom: (s allButFirst: realStart) readStream
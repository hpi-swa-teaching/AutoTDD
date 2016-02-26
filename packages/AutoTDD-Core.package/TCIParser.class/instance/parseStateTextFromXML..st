parsing
parseStateTextFromXML: aXMLDocument

	| errors failures tests |
	
	aXMLDocument elements isEmpty ifTrue: [^''].
	
	errors := self parseNumberOf: 'errors' fromXML: aXMLDocument.
	errors strictlyPositive 
		ifTrue: [ (errors = 1) ifTrue:[^'', 1, ' Error']. ^ '', errors, ' Errors'  ].
	failures := self parseNumberOf: 'failures' fromXML: aXMLDocument.
	failures strictlyPositive 
		ifTrue: [ (failures = 1) ifTrue:[^'', 1, ' Failure']. ^ '', failures, ' Failures' ].
	tests := self parseNumberOf: 'tests' fromXML: aXMLDocument.
	tests strictlyPositive 
		ifTrue: [ (errors = 1) ifTrue:[^'', 1, ' Pass']. ^ '', tests, ' Tests' ].
	^ String empty
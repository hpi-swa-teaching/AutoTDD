building
selectedJobStateText
	
	| text testsuite testsC errorsC failuresC failures message lines |
	
	testsuite := self parser parseXMLFromLog: self log.
	testsuite elements ifEmpty: [ ^ 'no xml available' ].
	testsuite := testsuite root.
	testsC := (testsuite attributeAt: 'tests' ifAbsent: [ 0 ]) asInteger.
	failuresC := (testsuite attributeAt: 'failures' ifAbsent: [ 0 ]) asInteger.
	errorsC := (testsuite attributeAt: 'errors' ifAbsent: [ 0 ]) asInteger.
	failures := testsuite elements
		select: [ :each |
			each elements
				contains: [ :any |
					any name = 'failure' or: [ any name = 'error' ] ] ].
	failures sort: [ :a :b |
		a elements first name < b elements first name ].
	text := 'Tests: ' , testsC , ' Failures: ' , failuresC , ' Errors: '
		, errorsC , Character cr.
	failures
		do: [ :each |
			message := each elements first contents first string.
			lines := message lines.
			message := ''.
			lines do: [ :line |
				message := message , Character tab , line , Character cr ].
			text := text , Character cr , '*****************'
				, each elements first name asUppercase , 
					'*****************'
				, Character cr , 'Classname: ' , (each at: 'classname')
				, Character cr , 'Testname: ' , (each at: 'name')
				, Character cr , 'Message: ' , Character cr , message ].
	
	^ text
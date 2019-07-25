accessing
selectedStateColor
	
	^ self
		determineColorOf: (self parser
			primitiveParseAt: self selectedResult
			of: self testResults)
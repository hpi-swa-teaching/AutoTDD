tests
testPrimitiveParseNameOf
	
	| parser name |
	
	parser := ATDDGitHubActionsParser new.
	name := parser primitiveParseNameOf: self sampleNameJson. 
		
	self assert: name = 'Samuel Kunst'
		
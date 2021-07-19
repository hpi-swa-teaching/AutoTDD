tests
testConfiguration

	| scrollableTextSpec |
	
	scrollableTextSpec := ATDDPluggableScrollableTextSpec new.
	self assert: scrollableTextSpec vScrollBarPolicy isNil.
	
	scrollableTextSpec vScrollBarPolicy: #always.
	self assert: scrollableTextSpec vScrollBarPolicy = #always.
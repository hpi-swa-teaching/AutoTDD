as yet unclassified
testConfiguration

	| scrollableTextSpec |
	
	"NEWER VERSION: scrollableTextSpec := ATDDPluggableScrollableTextSpec new."
	scrollableTextSpec := ATDDPluggableTextSpecPlus new.
	self assert: scrollableTextSpec vScrollBarPolicy isNil.
	
	scrollableTextSpec vScrollBarPolicy: #always.
	self assert: scrollableTextSpec vScrollBarPolicy = #always.
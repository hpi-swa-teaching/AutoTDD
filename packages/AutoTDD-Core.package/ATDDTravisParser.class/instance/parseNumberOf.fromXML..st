parsing
parseNumberOf: aString fromXML: aXMLDocument
	
	^ (aXMLDocument root attributeAt: aString ifAbsent: [ ^ 0 ]) asInteger
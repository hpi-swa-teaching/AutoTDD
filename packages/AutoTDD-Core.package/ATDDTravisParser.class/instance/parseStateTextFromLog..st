parsing
parseStateTextFromLog: aString
	
	^ self parseStateTextFromXML: (self parseXMLFromLog: aString)
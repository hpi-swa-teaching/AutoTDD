parsing
parseCurrentStateOf: aTestResultCollection

	^ self primitiveParseStateOf: (self primitiveParseFirstOf: aTestResultCollection)
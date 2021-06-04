building
buildTestingEntityHeaderOfType: aSymbol with: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: (self testingEntityHeaderDictionary at: aSymbol);
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #contents;
		yourself
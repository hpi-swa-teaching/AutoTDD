building
buildTestingEntityMessageOfType: aSymbol with: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: (self testingEntityMessageDictionary at: aSymbol);
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #contents;
		softLineWrap: true;
		yourself
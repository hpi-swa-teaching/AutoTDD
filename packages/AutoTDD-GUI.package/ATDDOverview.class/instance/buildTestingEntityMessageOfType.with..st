building
buildTestingEntityMessageOfType: aSymbol with: aBuilder
	
	"code does not work without contents after the parentheses
	i am not sure why"
	
	^ aBuilder pluggableInputFieldSpec new
		model: (self testingEntityMessageDictionary at: aSymbol) contents;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #contents;
		softLineWrap: true;
		yourself
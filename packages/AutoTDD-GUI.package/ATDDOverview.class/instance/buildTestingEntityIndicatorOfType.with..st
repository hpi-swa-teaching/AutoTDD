building
buildTestingEntityIndicatorOfType: aSymbol with: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: (self testingEntityIndicatorDictionary at: aSymbol);
		action: [ self openTestingEntityResultsOfType: aSymbol ];
		label: #contents;
		enabled: true;
		yourself
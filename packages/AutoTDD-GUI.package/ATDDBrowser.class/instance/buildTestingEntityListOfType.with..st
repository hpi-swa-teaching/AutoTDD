building
buildTestingEntityListOfType: aSymbol with: aBuilder	

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: (((self class testingEntityUIDictionary at: aSymbol) at: 'listDictionary') at: 'list');
		getIndex: (((self class testingEntityUIDictionary at: aSymbol) at: 'listDictionary') at: 'getIndex');
		setIndex: (((self class testingEntityUIDictionary at: aSymbol) at: 'listDictionary') at: 'setIndex');
		getSelectionList: (((self class testingEntityUIDictionary at: aSymbol) at: 'listDictionary') at: 'getSelectionList');
		setSelectionList: (((self class testingEntityUIDictionary at: aSymbol) at: 'listDictionary') at: 'setSelectionList');
		yourself
building
buildListFor: aListDictionary with: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: (aListDictionary at: 'data');
		getIndex: (aListDictionary at: 'getIndex');
		setIndex: (aListDictionary at: 'setIndex');
		getSelectionList: (aListDictionary at: 'getSelectionList');
		setSelectionList: (aListDictionary at: 'setSelectionList');
		yourself
building
buildTestingEntityHeaderOfType: aSymbol with: aBuilder

	^ aBuilder pluggableTextSpec new
		model: (self headerForTestingEntity: aSymbol);
		readOnly: true;
		getText: #contents;
		yourself 
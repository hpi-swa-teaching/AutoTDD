building
buildHeaderForTestingEntityType: aSymbol with: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		help: (self headerForTestingEntity: aSymbol);
		yourself
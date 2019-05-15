building
buildButtonsWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
			add: (self buildSaveButtonWith: aBuilder);
			yourself);
		yourself.
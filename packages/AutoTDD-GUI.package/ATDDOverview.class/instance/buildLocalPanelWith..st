building
buildLocalPanelWith: aBuilder 
	^ aBuilder pluggablePanelSpec new model: self;
		 layout: #proportional;
		 children: (OrderedCollection new add: ((self buildLocalHeadingWith: aBuilder) frame: self headingFrame;
				 yourself);
			 add: ((self buildLocalIndicatorWith: aBuilder) frame: self indicatorFrame;
				 yourself);
			 add: ((self buildLocalMessageWith: aBuilder) frame: self messageFrame;
				 yourself);
			 yourself);
		 yourself
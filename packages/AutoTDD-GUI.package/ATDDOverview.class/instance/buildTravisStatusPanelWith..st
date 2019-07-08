building
buildTravisStatusPanelWith: aBuilder 
	^ aBuilder pluggablePanelSpec new model: self;
		 layout: #proportional;
		 children: (OrderedCollection new add: ((self buildTravisStatusHeadingWith: aBuilder) frame: self headingFrame;
				 yourself);
			 add: ((self buildTravisStatusIndicatorWith: aBuilder) frame: self indicatorFrame;
				 yourself);
			 add: ((self buildTravisStatusMessageWith: aBuilder) frame: self messageFrame;
				 yourself);
			 yourself);
		 yourself
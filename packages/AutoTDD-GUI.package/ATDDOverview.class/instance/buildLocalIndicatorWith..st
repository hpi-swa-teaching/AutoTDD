building
buildLocalIndicatorWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: localIndicator;
		 action: [self openLocalResults];
		 color: #contents;
		 enabled: true;
		 yourself
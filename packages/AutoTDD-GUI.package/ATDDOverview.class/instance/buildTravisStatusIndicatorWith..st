building
buildTravisStatusIndicatorWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: travisStatusIndicator;
		 action: [self openTravisStatusResults];
		 color: #contents;
		 enabled: true;
		 yourself
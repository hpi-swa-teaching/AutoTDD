building
buildButtonPerforming: aMethod withLabel: aString with: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: aMethod;
		label: aString;
		enabled: true;
		yourself
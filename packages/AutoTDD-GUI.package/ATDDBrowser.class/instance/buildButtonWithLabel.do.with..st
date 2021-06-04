building
buildButtonWithLabel: aString do: aMethod with: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: aMethod;
		label: aString;
		enabled: true;
		yourself
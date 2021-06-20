building
buildSimplifyLogCheckBoxWith: aBuilder

	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #simplifyLogCheckBoxLabel;
		action: #simplifyLogCheckBoxAction;
		state: #simplifyLogCheckBoxState;
		yourself
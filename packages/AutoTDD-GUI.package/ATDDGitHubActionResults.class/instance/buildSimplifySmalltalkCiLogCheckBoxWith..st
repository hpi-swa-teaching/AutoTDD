building
buildSimplifySmalltalkCiLogCheckBoxWith: aBuilder

	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #simplifySmalltalkCiLogCheckBoxLabel;
		action: #simplifySmalltalkCiLogCheckBoxAction;
		state: #simplifySmalltalkCiLogCheckBoxState;
		yourself
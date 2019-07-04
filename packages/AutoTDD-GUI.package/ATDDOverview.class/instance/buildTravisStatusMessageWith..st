building
buildTravisStatusMessageWith: aBuilder 
	^ aBuilder pluggableInputFieldSpec new model: travisStatusMessage;
		 indicateUnacceptedChanges: false;
		 readOnly: true;
		 getText: #contents;
		 softLineWrap: true;
		 yourself
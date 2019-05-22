building
buildWatcherTextWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: watcherName;
		help: self watcherTextHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself
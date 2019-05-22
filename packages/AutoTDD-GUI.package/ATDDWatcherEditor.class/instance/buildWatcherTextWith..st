building
buildWatcherTextWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: watcherName;
		help: self watcherTextLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself
as yet unclassified
addWatcher
	| defaultWatcher |
	defaultWatcher := (ATDDWatcher newWithConfig:
			(Dictionary new
				at: 'name'
				put: 'New Watcher';
				yourself)).
	self openEditorForWatcher: defaultWatcher
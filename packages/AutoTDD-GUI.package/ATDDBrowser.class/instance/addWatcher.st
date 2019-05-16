as yet unclassified
addWatcher
	| defaultWatcher |
	defaultWatcher := ATDDWatcher new.
	self watchers add: defaultWatcher.
	self changed: #watchers.
	self openEditorForWatcher: defaultWatcher
action
editWatcher
	
	^ self selectedWatchers collect: [ :watcher | self openEditorForWatcher: watcher ]
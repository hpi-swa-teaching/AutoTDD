action
editWatchers
	
	^ self selectedWatchers collect: [ :watcher | self openEditorForTestingEntity: watcher ]
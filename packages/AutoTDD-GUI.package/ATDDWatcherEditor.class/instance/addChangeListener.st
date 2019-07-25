updating
addChangeListener
	
	SystemChangeNotifier uniqueInstance
		notify: self
			ofSystemChangesOfItem: #class
			change: #Added
			using: #update;
		notify: self
			ofSystemChangesOfItem: #category
			change: #Added
			using: #update;
		notify: self
			ofSystemChangesOfItem: #class
			change: #Removed
			using: #update;
		notify: self
			ofSystemChangesOfItem: #category
			change: #Removed
			using: #update;
		notify: self
			ofSystemChangesOfItem: #class
			change: #Renamed
			using: #update;
		notify: self
			ofSystemChangesOfItem: #category
			change: #Renamed
			using: #update;
		notify: self
			ofSystemChangesOfItem: #class
			change: #Recategorized
			using: #update;
		notify: self
			ofSystemChangesOfItem: #category
			change: #Recategorized
			using: #update
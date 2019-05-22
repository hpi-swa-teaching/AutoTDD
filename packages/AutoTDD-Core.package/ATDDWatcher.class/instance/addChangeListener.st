initialization
addChangeListener
	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #method
		using: #methodChanged:;
		notify: self
		ofSystemChangesOfItem: #class
		using: #methodChanged:
action
pauseAll
	
	self watchers do: [ :watcher | self pauseWatcher: watcher ].
	self travisStatuses
		do: [ :travisStatus |
			self pauseTravisStatus: travisStatus ].
	self class changed: #watchers.
	self class changed: #travisStatuses
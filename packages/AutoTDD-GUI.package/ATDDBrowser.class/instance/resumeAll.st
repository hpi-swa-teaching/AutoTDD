action
resumeAll
	self watchers do: [:watcher | self resumeWatcher: watcher].
	self travisStatuses do: [:travisStatus | self resumeTravisStatus: travisStatus].
	self class changed: #watchers.
	self class changed: #travisStatuses
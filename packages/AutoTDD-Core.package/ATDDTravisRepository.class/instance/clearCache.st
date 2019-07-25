utility
clearCache
	
	self cache: nil.
	self cache at: #lastRefresh put: TimeStamp now asTime asSeconds
action
removeTravisStatuses: aTravisStatusList
	
	aTravisStatusList do: [ :travisStatus | travisStatus delete ].
	self travisStatuses removeAll: aTravisStatusList.
	self class changedTravisStatuses
utility
deleteAllInstances
	instances
		do: [:instance | instance superDelete].
	instances reset
accessing
instances
	^ instances
		ifNil: [instances := OrderedCollection new]
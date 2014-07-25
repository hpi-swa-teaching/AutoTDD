loading
loadResource: aString

	^ self loadResource: aString ifAbsent: [ self class defaultResource ]
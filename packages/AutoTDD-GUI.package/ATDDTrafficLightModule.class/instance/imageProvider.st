accessing
imageProvider

	^ imageProvider ifNil: [ imageProvider := ATDDInImageProvider new ]
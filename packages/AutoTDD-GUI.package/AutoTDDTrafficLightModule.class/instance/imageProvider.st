accessing
imageProvider

	^ imageProvider ifNil: [ imageProvider := AutoTDDImageProvider new ]
accessing
apiUrl

	^ apiUrl ifNil: [ apiUrl := 'https://api.github.com/' ]
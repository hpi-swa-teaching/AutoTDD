accessing
travisProAuthentificationCode
	
	^ travisProAuthentificationCode ifNil: [ travisProAuthentificationCode := 'YOUR TRAVIS ACCESS TOKEN' ]
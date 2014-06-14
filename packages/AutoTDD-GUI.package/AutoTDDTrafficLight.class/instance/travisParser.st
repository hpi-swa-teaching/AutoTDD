accessing
travisParser

	^ travisParser ifNil: [ travisParser := TravisCIParser new ]
accessing
travisHandler

	^ travisHandler ifNil: [ travisHandler := TravisCIHandler new owner: self ]
accessing
parser
	^ parser
		ifNil: [parser := TravisCIParser new]
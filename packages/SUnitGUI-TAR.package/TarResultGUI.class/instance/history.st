as yet unclassified
history

	| text |
	
	^ (self data results collect: [ :result |
		result ifNil: 
			[text := 'Build canceled.']
		ifNotNil:
			[text := result timeStamp asString].
		Text new
			append: text;
			addAttribute: (TextColor new
				color: (self determineColorOf: result)) ])
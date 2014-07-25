as yet unclassified
history

	^ self data results collect: [ :result |
		Text new
			append: result timeStamp asString;
			addAttribute: (TextColor new
				color: (self determineColorOf: result));
			yourself ]
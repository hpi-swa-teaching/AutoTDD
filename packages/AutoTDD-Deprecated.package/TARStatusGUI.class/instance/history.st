accessing
history
	
	^ self data testResults
		collect: [ :result |
			Text new
				append: result timeStamp asString;
				addAttribute: (TextColor new
						color: (self determineColorOf: result));
				yourself ]
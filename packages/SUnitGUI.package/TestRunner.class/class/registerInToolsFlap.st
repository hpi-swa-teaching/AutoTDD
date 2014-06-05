initialization
registerInToolsFlap
	self environment at: #Flaps ifPresent: [ :class |
		class
			registerQuad: #( TestRunner build 'SUnit Runner' 'A production scale test-runner.' ) forFlapNamed: 'Tools';
			replaceToolsFlap ].
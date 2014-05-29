baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				project: 'Widgets' with: 
					[ spec
     						className: 'ConfigurationOfWidgets';
						versionString: #stable;
						loads: #('tests');			
       					repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository';
						yourself ];
				"project: 'WebClient' with: 
					[ spec
     						className: 'ConfigurationOfWebClient';
						versionString: #stable;
						loads: #('Core');			
       					repository: 'http://ss3.gemstone.com/ss/WebClient';
						yourself ];"
				yourself.
			spec
				package: 'JSON' with: 
					[ spec
     						repository: 'http://www.squeaksource.com/JSON';
						yourself ];
				package: 'VB-Regex' with: 
					[ spec
     						repository: 'http://www.squeaksource.com/Regex';
						yourself ];
				"package: 'SqueakSSL-Core' with: 
					[ spec
     						repository: 'http://www.squeaksource.com/SqueakSSL';
						yourself ];"
				package: 'SqueakSSL-Core';
				package: 'WebClient-Core'; 
				package: 'Project05-Core' with: [spec requires: #('JSON' 'VB-Regex' 'WebClient-Core' 'SqueakSSL-Core')];
				package: 'Project05-Tests' with: [spec requires: #('Project05-Core')];
				package: 'SUnitGUI-TAR';
				package: 'SUnitGUI-TAR-Tests' with: 
					[spec requires: #('SUnitGUI-TAR' 'Widgets')];
				yourself.
			spec
				group: 'default' with: #('Project05-Core' 'SUnitGUI-TAR');
				group: 'Tests' with: #('Project05-Tests' 'SUnitGUI-TAR-Tests');
				group: 'TravisCI' with: #('Tests')	];
				yourself
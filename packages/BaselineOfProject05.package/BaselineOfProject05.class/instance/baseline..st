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
				project: 'WebClient' with: 
					[ spec
     						className: 'ConfigurationOfWebClient';
						versionString: #stable;
						loads: #('Core');			
       					repository: 'http://ss3.gemstone.com/ss/WebClient';
						yourself ];
				yourself.
			spec
				package: 'JSON' with: 
					[ spec
     						file: 'JSON-ul.35';	
       					repository: 'http://www.squeaksource.com/JSON';
						yourself ];
				package: 'VB-Regex' with: 
					[ spec
     						repository: 'http://www.squeaksource.com/Regex';
						yourself ];
				package: 'SqueakSSL-Core' with: 
					[ spec
     						repository: 'http://www.squeaksource.com/SqueakSSL';
						yourself ];
				package: 'AutoTDD-Core' with: [spec requires: #('libraries' 'AutoTDD-Exceptions')];
				package: 'AutoTDD-GUI';
				package: 'AutoTDD-Dummy';
				package: 'AutoTDD-Exceptions';
				package: 'AutoTDD-Tests' with: [spec requires: #('default' 'dummies' 'Widgets')];
				yourself.
			spec
				group: 'default' with: #('AutoTDD-Core' 'AutoTDD-GUI');
				group: 'libraries' with: #('JSON' 'VB-Regex' 'WebClient' 'SqueakSSL-Core');
				group: 'dummies' with: #('AutoTDD-Dummy');
				group: 'Tests' with: #('AutoTDD-Tests');
				group: 'TravisCI' with: #('Tests')	];
				yourself
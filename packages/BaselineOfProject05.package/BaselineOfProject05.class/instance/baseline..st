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
						requires: 'SqueakSSL-Core';
						yourself ];
				yourself.
			spec
				package: 'JSON' with: 
					[ spec
     						repository: 'http://www.squeaksource.com/JSON';
						yourself ];
				package: 'SqueakSSL-Core' with: 
					[ spec
     						repository: 'http://www.squeaksource.com/SqueakSSL';
						yourself ];
				package: 'Project05-Core' with: [spec requires: #('JSON WebClient')];
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
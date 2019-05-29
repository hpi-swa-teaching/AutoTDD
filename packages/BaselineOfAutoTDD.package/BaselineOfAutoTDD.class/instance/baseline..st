baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'JSON' with: 
					[ spec
     					file: 'JSON-ul.35';	
       					repository: 'http://www.squeaksource.com/JSON' ];
				package: 'VB-Regex' with: 
					[ spec repository: 'http://www.squeaksource.com/Regex' ];
				package: 'AutoTDD-Core' with: [spec requires: #('libraries' 'AutoTDD-Exceptions')];
				package: 'AutoTDD-GUI';
				package: 'AutoTDD-Dummy-Success-Tests';
				package: 'AutoTDD-Dummy-Category';
				package: 'AutoTDD-Exceptions';
				package: 'AutoTDD-Tests' with: [spec requires: #('default' 'dummies' 'Widgets')];
				yourself.
			spec baseline: 'Project12' with: [spec repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'].
			spec
				group: 'default' with: #('AutoTDD-Core' 'AutoTDD-GUI');
				group: 'libraries' with: #('JSON' 'VB-Regex');
				group: 'dummies' with: #('AutoTDD-Dummy-Success-Tests' 'AutoTDD-Dummy-Category');
				group: 'Tests' with: #('AutoTDD-Tests' 'Widgets');
				group: 'TravisCI' with: #('Tests')	];
				yourself
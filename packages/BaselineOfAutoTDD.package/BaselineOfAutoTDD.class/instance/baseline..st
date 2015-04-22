baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				project: 'Widgets' with: 
					[ spec
     						className: 'BaselineOfWidgets';
						loads: #('tests');			
       					repository: 'github://marceltaeumel/widgets/repository';
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
				package: 'AutoTDD-Core' with: [spec requires: #('libraries' 'AutoTDD-Exceptions')];
				package: 'AutoTDD-GUI';
				package: 'AutoTDD-Dummy-Success-Tests';
				package: 'AutoTDD-Dummy-Category';
				package: 'AutoTDD-Exceptions';
				package: 'AutoTDD-Tests' with: [spec requires: #('default' 'dummies' 'Widgets')];
				yourself.
			spec
				group: 'default' with: #('AutoTDD-Core' 'AutoTDD-GUI');
				group: 'libraries' with: #('JSON' 'VB-Regex');
				group: 'dummies' with: #('AutoTDD-Dummy-Success-Tests' 'AutoTDD-Dummy-Category');
				group: 'Tests' with: #('AutoTDD-Tests', 'Widgets');
				group: 'TravisCI' with: #('Tests')	];
				yourself
baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Widgets' with: 
					[ spec
						loads: #('tests');
						repository: 'github://hpi-swa/widgets:master/repository' ];
				yourself.
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
			(Smalltalk version beginsWith: 'Squeak4.') 
				ifTrue: [spec group: 'libraries' with: #('JSON' 'VB-Regex')]
				ifFalse: [spec group: 'libraries' with: #('JSON')].
			spec
				group: 'default' with: #('AutoTDD-Core' 'AutoTDD-GUI');
				group: 'dummies' with: #('AutoTDD-Dummy-Success-Tests' 'AutoTDD-Dummy-Category');
				group: 'Tests' with: #('AutoTDD-Tests' 'Widgets');
				group: 'TravisCI' with: #('Tests')	];
				yourself

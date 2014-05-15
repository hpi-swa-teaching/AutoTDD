baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec project: 'Widgets' with: 
				[ spec
     					className: 'ConfigurationOfWidgets';
					versionString: #stable;
					loads: #('tests');			
       				repository: 						'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities';
					yourself ];
				yourself.
			spec
				package: 'Project05-Core';
				package: 'Project05-Tests' with: [spec requires: #('Project05-Core')];
				package: 'SUnitGUI-TAR';
				package: 'SUnitGUI-TAR-Tests' with: 
					[spec requires: #('SUnitGUI-TAR')];
				yourself.
			spec
				group: 'default' with: #('Project05-Core' 'SUnitGUI-TAR');
				group: 'Tests' with: #('Project05-Tests' 'SUnitGUI-TAR-Tests');
				group: 'TravisCI' with: #('Tests')	];
				yourself
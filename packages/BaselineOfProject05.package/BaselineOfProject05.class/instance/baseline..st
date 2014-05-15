baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec configuration: 'UiTestCase' with: 
				[ spec
        				version: #stable;
       				repository: 						'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities' ].
			spec
				package: 'WidgetTest' with: [spec requires: 'UiTestCase'];
				package: 'Project05-Core' with: [spec requires: #('WidgetTest')];
				package: 'Project05-Tests' with: [spec requires: #('Project05-Core')];
				package: 'SUnitGUI-TAR' with: [spec requires: #('WidgetTest')];
				package: 'SUnitGUI-TAR-Tests' with: [spec requires: #('SUnitGUI-TAR')].
			spec
				group: 'default' with: #('Project05-Core' 'SUnitGUI-TAR');
				group: 'Tests' with: #('Project05-Tests' 'SUnitGUI-TAR-Tests' 								'WidgetTests');
				group: 'TravisCI' with: #('Tests')	]
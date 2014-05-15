baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec configuration: 'UiTestCase' with: [
     				spec
        				version: #stable;
       				repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities' ].
			spec
				package: 'WidgetTest-Support' with: [spec requires: 'UiTestCase'];
				package: 'Project05-Core';
				package: 'Project05-Tests' with: [spec requires: #('Project05-Core')];
				package: 'SUnitGUI-TAR';
				package: 'SUnitGUI-TAR-Tests' with: [spec requires: #('SUnitGUI-TAR')].
			spec
				group: 'default' with: #('Project05-Core' 'SUnitGUI-TAR');
				group: 'Tests' with: #('Project05-Tests' 'SUnitGUI-TAR-Tests' 								'WidgetTests-Support');
				group: 'TravisCI' with: #('Tests')	]
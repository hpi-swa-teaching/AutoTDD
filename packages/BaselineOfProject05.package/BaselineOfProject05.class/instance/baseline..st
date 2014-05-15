baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Project05-Core';
				package: 'Project05-Tests' with: [spec requires: #('Project05-Core')];
				package: 'SUnitGUI-TAR';
				package: 'SUnitGUI-TAR-Tests' with: [spec requires: #('SUnitGUI-TAR')];
				package: 'WidgetTest-Support'.
			spec
				group: 'default' with: #('Project05-Core' 'SUnitGUI-TAR');
				group: 'Tests' with: #('Project05-Tests' 'SUnitGUI-TAR-Tests');
				group: 'TravisCI' with: #('Tests')	]
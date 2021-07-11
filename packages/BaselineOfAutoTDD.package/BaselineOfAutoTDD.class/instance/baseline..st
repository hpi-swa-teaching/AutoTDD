baseline
baseline: spec
	
	<baseline>
	spec for: #common do: [
        spec package: 'JSON' with: [
            spec
                file: 'JSON-ul.35';
                repository: 'http://www.squeaksource.com/JSON' ];
        project: 'OSProcess' with: [
            spec
                className: 'ConfigurationOfOSProcess';
                repository: 'http://www.squeaksource.com/OSProcess';
                versionString: #'stable' ];
        package: 'AutoTDD-Core' with: [
            spec
                requires: #(
                    'libraries'
                    'AutoTDD-Exceptions'
                    'OSProcess') ];
        package: 'AutoTDD-GUI' with: [ spec requires: #( 'AutoTDD-Core' ) ];
        postLoadDoIt: #postLoad;
        package: 'AutoTDD-Dummy-Success-Tests';
        package: 'AutoTDD-Dummy-Failure-Tests';
        package: 'AutoTDD-Dummy-Error-Tests';
        package: 'AutoTDD-Dummy-Category';
        package: 'AutoTDD-Exceptions';
        package: 'AutoTDD-Dummy-Setting-Tests';
        package: 'AutoTDD-Tests' with: [ spec requires: #( 'default' 'dummies' ) ];
        yourself.
    spec
        group: 'default' with: #( 'AutoTDD-Core' 'AutoTDD-GUI' );
        group: 'libraries' with: #( 'JSON' );
        group: 'dummies' with: #(
            'AutoTDD-Dummy-Success-Tests'
            'AutoTDD-Dummy-Failure-Tests'
            'AutoTDD-Dummy-Error-Tests'
            'AutoTDD-Dummy-Category'
            'AutoTDD-Dummy-Setting-Tests' );
        group: 'Tests' with: #( 'AutoTDD-Tests' );
        group: 'TravisCI' with: #( 'Tests' ) ];
    yourself
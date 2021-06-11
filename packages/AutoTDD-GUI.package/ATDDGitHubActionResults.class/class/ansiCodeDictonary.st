constants
ansiCodeDictonary

	^ Dictionary newFrom: {
		'[31m' -> (Dictionary newFrom: { 'prefix' -> 'FAIL'.	'color' -> (ATDDTestingEntity colorDictionary at: #error) }).
		'[32m' -> (Dictionary newFrom: { 'prefix' -> 'PASS'.	'color' -> (ATDDTestingEntity colorDictionary at: #successful) })
	}
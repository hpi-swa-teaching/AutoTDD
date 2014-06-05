actions
addMethodsUnderTestIn: packages to: methods 
	packages
		do: [:package | package isNil
				ifFalse: [package methods
						do: [:method | ((#(#packageNamesUnderTest #classNamesNotUnderTest ) includes: method methodSymbol)
									or: [method compiledMethod isAbstract
											or: [method compiledMethod refersToLiteral: #ignoreForCoverage]])
								ifFalse: [methods add: method]]]]
ui-simulation
simulateAddButtonPress
	self flag: #todo.
	browser addWatcher
	"browser perform: (browser buildAddButtonWith: ToolBuilder default)
	action"
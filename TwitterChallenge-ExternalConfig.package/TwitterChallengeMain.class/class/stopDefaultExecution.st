run
stopDefaultExecution

	defaultRun ifNil: [^ self].
	defaultRun stop.
	defaultRun := nil.
tests
testMoveHavingThreeStopRoute

	| busDriver expectedBusStops |
	
	expectedBusStops := {1 asBusStop. 2 asBusStop. 3 asBusStop.}.
	busDriver := BusDriver forRout: expectedBusStops.
	busDriver move.
	self assert: busDriver currentBusStop equals: 1 asBusStop .
	busDriver move.
	self assert: busDriver currentBusStop equals: 2 asBusStop .
	busDriver move.
	self assert: busDriver currentBusStop equals: 3 asBusStop .
	busDriver move.
	self assert: busDriver currentBusStop equals: 1 asBusStop .
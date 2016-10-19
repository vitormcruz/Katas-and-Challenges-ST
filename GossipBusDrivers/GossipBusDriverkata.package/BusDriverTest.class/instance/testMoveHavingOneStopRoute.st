tests
testMoveHavingOneStopRoute

	| busDriver expectedBusStop |
	
	expectedBusStop := 1 asBusStop.
	busDriver := BusDriver forRout: {expectedBusStop}.
	busDriver move; move.
	self assert: busDriver currentBusStop equals: expectedBusStop.
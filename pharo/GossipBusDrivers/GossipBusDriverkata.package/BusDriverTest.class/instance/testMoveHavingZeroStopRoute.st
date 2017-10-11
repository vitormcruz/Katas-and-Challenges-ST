tests
testMoveHavingZeroStopRoute

	self should: [BusDriver forRout: {}. ]  raise: Error  description: 'Nowhere to go!' 
	
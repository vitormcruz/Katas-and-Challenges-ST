tests
testReceiveGossip
	| busDriver busDriver2 expectedGossipsKnown |
	
	busDriver := BusDriver forRout: {1 asBusStop}.
	busDriver2 := BusDriver forRout: {1 asBusStop}.
	expectedGossipsKnown := (busDriver gossipsKnow | busDriver2 gossipsKnow) asSet.
	
	busDriver move.
	busDriver2 move.
	busDriver gossip.
	busDriver2 gossip.	

	self assert: busDriver gossipsKnow asSet equals: expectedGossipsKnown.
	self assert: busDriver2 gossipsKnow asSet equals: expectedGossipsKnown.

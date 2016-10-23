accessing
routes: aSetOfRoutesNumber

	| busDrivers |
	
	busDrivers := aSetOfRoutesNumber collect: [:rout | BusDriver forRout: (rout collect: #asBusStop) ] .

	1 to: 480 do: [ :minute | 
			busDrivers do: #move.
			busDrivers do: #gossip.
			broadCastToAll := busDrivers allSatisfy: [ :busDriver | busDriver gossipsKnow size = busDrivers size].
			broadCastToAll ifTrue: [ timeBroadcastGossipsAllDrivers := minute. 
											^ self.]
	].
		

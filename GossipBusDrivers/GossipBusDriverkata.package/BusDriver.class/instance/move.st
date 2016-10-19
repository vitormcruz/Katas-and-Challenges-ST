action
move
	routeReadStream atEnd ifTrue: [ routeReadStream reset ].
	currentBusStop := routeReadStream next.
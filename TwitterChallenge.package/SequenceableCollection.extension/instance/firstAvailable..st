*TwitterChallenge-accessing
firstAvailable: anInteger 
	[self first: anInteger] on: SubscriptOutOfBounds do: [ ^self ].
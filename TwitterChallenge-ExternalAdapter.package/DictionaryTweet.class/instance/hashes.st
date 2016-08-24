accessing
hashes
	
	^ ((tweetDictionary at: #entities) at: #hashtags) collect: [ :hashAssociation | hashAssociation at: #text ].
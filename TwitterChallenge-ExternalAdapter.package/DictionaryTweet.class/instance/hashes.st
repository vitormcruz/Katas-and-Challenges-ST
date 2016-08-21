accessing
hashes
	
	^ ((tweetDictionary at: #entities) at: #hashTags) collect: [ :hashAssociation | hashAssociation value ].
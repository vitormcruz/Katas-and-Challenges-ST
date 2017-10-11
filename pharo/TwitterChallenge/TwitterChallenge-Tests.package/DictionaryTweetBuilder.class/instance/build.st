building
build

	| dictionary | 
	
	dictionary :=  Dictionary new.
	dictionary at: #entities put: {#hashtags -> (hashList collect: [ :hashTag |  {#text -> hashTag} asDictionary]) } asDictionary.
	dictionary at: #text put: tweetText.
	^ DictionaryTweet newFromDictionary: dictionary 

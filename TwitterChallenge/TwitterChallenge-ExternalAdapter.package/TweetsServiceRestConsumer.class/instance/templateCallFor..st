fetching
templateCallFor: handler
	^ 'https://api.twitter.com/1.1/statuses/user_timeline.json?include_rts=true&screen_name=' , handler , '&count=' , MAX_TWEETS_CALL asString.
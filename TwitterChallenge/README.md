# Twitter Challenge

Solved the following challenge:

    Build an API that accepts a Twitter handle and limit 
    and responds with the top 10 hashtags that the handle has ever
    tweeted. The limit should be capped at a maximum of 2,000 
    tweets to look back.
    When you're finished: 
    - Deploy the application to AWS, Heroku, or server hosting of 
      your choice.
    - Put the source code in your Github or send an archive containing 
      the source files directly to me. Remember to remove your 
      Twitter oauth tokens from the code!
    Example URL: http://{hosting-domain}/handle-analysis?handle=OCriador&limit=1000
	
	
The URL provided by this challenge is: http://localhost:8080/handle-analysis/<handler>/toptentags/?limit=<number>, the limit param is optional and 2000 is used if not provided.

To install it run:

Gofer new
    url:'http://smalltalkhub.com/mc/vitormcruz/Katas-and-Challenges/main';
    package: 'ConfigurationOfTwitterChallenge';
    load.
	
((Smalltalk at: #ConfigurationOfTwitterChallenge) project version: #stable) load.
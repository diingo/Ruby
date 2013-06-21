require "twitter"
# require "sendgrid"
require "gmail"


Twitter.configure do |config|
  config.consumer_key = "2SQ8TKENpcQawVCJJeITg"
  config.consumer_secret = "W2j9srLfXV56cyNTQUUcEai1o7U6oi5pG3jh22L7sI"
  config.oauth_token = "549725422-jDOZ1U4E7HZ4Lt0x5TlZ9dKpHDsJRFZAg3OEoFYg"
  config.oauth_token_secret = "Fzb2uiZNCOuZnGscTcncVVF0ONaHxH0kTghQLF1qCCU"
end

tweets = [] 

Twitter.search("MakerSquare", options = {:count => 10}).results.each do |tweet|


	tweets << [tweet.user.handle, tweet.text, tweet.user.url] 


end

gmail = Gmail.connect('', '') do |gmail|

# play with your gmail...
# gmail.logout

	gmail.deliver do
	  to "gene.gkl@gmail.com"
	  subject "Having fun in Puerto Rico!"
	  text_part do
	    body "Text of plaintext message."
	  end
	  html_part do
	    body "<p>Text of <em>html</em> message.</p>"
	  end
	  
	end

end

#note on nathaniel's idea of how to approach alternative to using TWEETS constant - as can be seen in silas' watchdog.rb'

# class Watcher
# 	initialize(terms)
# 	@terms = terms
# 	def results
# 		@results ||= Twitter.search.results.map
		
# 	end

# 	def deliver
		
# 	end

# 	def self.results
		
# 	end
# end





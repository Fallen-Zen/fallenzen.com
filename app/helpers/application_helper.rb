module ApplicationHelper
	def display_tweet_with_links(tweet)
		tweet.gsub(/(https?:\/\/[a-zA-Z0-9\/\.\+\-_:?&=]+)/) {|a| "<a href=\"#{a}\" target=\"_blank\">#{a}</a>"}
		.gsub(/@([A-Za-z0-9_]{1,15})/) {|a| "<a href=\"https:\/\/www.twitter.com\/#{a[1..-1]}\" target=\"_blank\">#{a}</a>"}
		.gsub(/#([A-Za-z0-9_]{1,15})/) {|a| "<a href=\"https:\/\/www.twitter.com\/hashtag\/#{a[1..-1]}\" target=\"_blank\">#{a}</a>"}
	end
end
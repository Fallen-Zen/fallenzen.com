atom_feed do |feed|
	feed.title "fallenzen.com - News"
	feed.updated @news.maximum(:updated_at)
	
	@news.each do |news|
		feed.entry news do |entry|
			entry.title news.title
			entry.content news.content, :type => 'html'
			entry.author do |author|
				author.name "Fallen Zen"
			end
		end
	end
end
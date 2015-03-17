class Search
	attr_accessor :keyword

	def initialize(keyword)
		@keyword = keyword
	end

	def podcasts
		if topic.podcasts.any?
			topic.podcasts
		else
			Api.new(keyword).load
		end
	end

	private

	def topic
		@topic = Topic.find_or_create_by(name: keyword)
	end
end
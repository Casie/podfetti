class PodcastsController < ApplicationController

	def index
		@newuser = true if flash[:newuser]
    @topics = Topic.all
    @categories_array = ["Arts", "Business", "Comedy", "Education", "Hobbies", "Government", "Health", "Kids", "Music", "News", "Politics", "Religion", "Science", "Medicine", "Culture", "Sports", "TV", "Film", "Technology"]
	end

	def results
		 @keyword = params[:searchkeyword]
    if Topic.find_by(name: @keyword.capitalize)
      @podcasts = Podcast.joins(:podcasts_topics).where({ "podcasts_topics.topic_id" => Topic.find_by(name: @keyword.capitalize)})
    else
      Api.new(@keyword).load
      @podcasts = Podcast.joins(:podcasts_topics).where({ "podcasts_topics.topic_id" => Topic.find_by(name: @keyword.capitalize)})
    end
	end

end
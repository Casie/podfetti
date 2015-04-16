class SearchController < ApplicationController

  def index
		@newuser = true if flash[:newuser]
    @topics = Topic.all
    @categories_array = ["Arts", "Business", "Comedy", "Education", "Hobbies", "Government", "Health", "Kids", "Music", "News", "Politics", "Religion", "Science", "Medicine", "Culture", "Sports", "TV", "Film", "Technology"]
	end

	def results
		@keyword = params[:searchkeyword]
		if @keyword
			@podcasts = Search.new(@keyword).podcasts
	  else
	  	redirect_to root_path, notice: "pick a keyword"
	  end
	end
end

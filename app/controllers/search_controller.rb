class SearchController < ApplicationController

	def results
		@keyword = params[:searchkeyword]
		if @keyword
			@podcasts = Search.new(@keyword).podcasts
	  else
	  	redirect_to root_path, notice: "pick a keyword"
	  end
	end
end

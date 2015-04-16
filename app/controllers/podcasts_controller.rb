class PodcastsController < ApplicationController

  def show
    @podcast = Podcast.find(params[:id])
    @post = Post.new
  end

end
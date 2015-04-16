class EpisodesController < ApplicationController

  def show
    @episode = Episode.find(params[:id])
    @post = Post.new
  end

end
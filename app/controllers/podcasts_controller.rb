class PodcastsController < ApplicationController

  def index
    @newuser = true if flash[:newuser]
    @topics = Topic.all
    @categories_array = ["Arts", "Business", "Comedy", "Education", "Hobbies", "Government", "Health", "Kids", "Music", "News", "Politics", "Religion", "Science", "Medicine", "Culture", "Sports", "TV", "Film", "Technology"]

    # # devise login
    # self.resource = resource_class.new(sign_in_params)
    # clean_up_passwords(resource)
    # yield resource if block_given?
    # respond_with(resource, serialize_options(resource))
  end
  
  def show
    @podcast = Podcast.find(params[:id])
    @post = Post.new
  end

end
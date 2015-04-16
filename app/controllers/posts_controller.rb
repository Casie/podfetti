class PostsController < ApplicationController

  def locate_redirect(post)
    if post.podcast_id
      redirect_to podcast_path(post.podcast)
    elsif post.episode_id
      redirect_to podcast_episode_path(post.episode.podcast, post.episode)
      # episode_id = post.episode_id
      # episode = Episode.find(episode_id)
      # podcast = episode.podcast
      # redirect "/podcasts/#{podcast.id}/#{episode_id}" 
    end
  end

  def create 
    @post = Post.create(post_params)
    if @post.podcast_id
      @podcast = Podcast.find(params[:post][:podcast_id])
    elsif @post.episode_id
      @episode = Episode.find(params[:post][:episode_id])
    end
    locate_redirect(@post)
  end  

  def destroy
   @post = Post.find(params[:id])
   @post.destroy
    locate_redirect(@post)
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :title, :content, :podcast_id, :episode_id)
  end

end
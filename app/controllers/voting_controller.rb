class VotingController < ApplicationController
  before_action :set_post

  def up
    @post.upvote_by current_user
    redirect_to posts_path 
  end

  def down
    @post.downvote_by current_user
    redirect_to posts_path
   
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
class PostsController < ApplicationController
  
  def index
    @fighters = Fighter.all
  end
  
  def fighter_index
    @fighter = Fighter.find(params[:id])
    @posts = @fighter.posts
  end
  
  def tag_index
    @tag = Tag.find(params[:id])
    @posts = @tag.posts
  end
  
end

class PostsController < ApplicationController
  
  def index
    @fighters = Fighter.order("RAND()")
  end
  
  def fighter_index
    @fighter = Fighter.find(params[:id])
    @posts = @fighter.posts.order('created_at DESC').page(params[:page])
  end
  
  def tag_index
    @tag = Tag.find(params[:id])
    @posts = @tag.posts.order('created_at DESC')
  end
  
  def new_index
    @posts = Post.order('created_at DESC')
  end
  
end

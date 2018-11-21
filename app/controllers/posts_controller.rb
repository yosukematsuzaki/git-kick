class PostsController < ApplicationController
  
  def index
    @fighters = Fighter.all
  end
  
  def fighter_index
    fighter = Fighter.find(params[:id])
    @posts = fighter.posts
  end
end

class PostsController < ApplicationController
  
  def index
    @fighters = Fighter.all
  end
  
end

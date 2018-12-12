class TagsController < ApplicationController
  
  def index
    @tags = Tag.all
    @parents = Tag.where(parent_id: nil)
  end
  
end

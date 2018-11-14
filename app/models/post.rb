class Post < ActiveRecord::Base
  belongs_to :fighter
  has_many :tags, through: :tagmaps
  has_many :tagmaps, dependent: :destroy
end

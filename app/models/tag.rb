class Tag < ActiveRecord::Base
  has_many :tagmaps, dependent: :destroy
  has_many :posts, through: :tagmaps
  
  validates :name, uniqueness: true
end

class Post < ActiveRecord::Base
  belongs_to :fighter
  has_many :tags, through: :tagmaps
  has_many :tagmaps, dependent: :destroy
  
  accepts_nested_attributes_for :tagmaps, allow_destroy: true
  validates :url, uniqueness: true
  validates :page_source, uniqueness: true
end

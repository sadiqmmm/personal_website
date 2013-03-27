class Article < ActiveRecord::Base
  belongs_to :category

  attr_accessible :content, :summary, :title, :category_id

  validates :content, :summary, :title, presence: true
  validates :title, uniqueness: true
end

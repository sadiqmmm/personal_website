class Category < ActiveRecord::Base
  has_many :articles

  attr_accessible :name

  validates :name, presence: true, uniqueness: true
end

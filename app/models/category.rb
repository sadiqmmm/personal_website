class Category < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  has_many :articles

  attr_accessible :name

  validates :name, presence: true, uniqueness: true
end

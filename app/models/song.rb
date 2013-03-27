class Song < ActiveRecord::Base
  attr_accessible :artist, :spotify_link, :title

  validates :artist, :title, :spotify_link, presence: true
  validates :spotify_link, uniqueness: true
end

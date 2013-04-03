class Project < ActiveRecord::Base
  attr_accessible :description, :title, :picture, :url

  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates_attachment_presence :picture

  has_attached_file :picture,
    storage: :dropbox,
    styles: { main: "570x400!", thumbnail: "283x200!" },
    dropbox_credentials: "#{Rails.root}/config/dropbox.yml"

end

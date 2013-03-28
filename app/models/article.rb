class Article < ActiveRecord::Base
  belongs_to :category

  attr_accessible :content, :summary, :title, :category_id, :picture

  validates :content, :summary, :title, presence: true
  validates :title, uniqueness: true
  validates_attachment_presence :picture

  has_attached_file :picture,
    storage: :dropbox,
    dropbox_credentials: "#{Rails.root}/config/dropbox.yml"
end

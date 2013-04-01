class Article < ActiveRecord::Base
  extend FriendlyId

  friendly_id :title, use: :slugged

  belongs_to :category

  attr_accessible :content, :summary, :title, :category_id, :picture

  validates :content, :summary, :title, presence: true
  validates :title, uniqueness: true
  validates_attachment_presence :picture

  has_attached_file :picture,
    storage: :dropbox,
    styles: { header: "770x400!" },
    dropbox_credentials: "#{Rails.root}/config/dropbox.yml"
end

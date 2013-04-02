class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user

  attr_accessible :article_id, :content, :user_id
end

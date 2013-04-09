object @article

# Decalre the properties to include
attributes :title, :summary, :content, :picture

# Return the date in a nicer format: 09 Apr. 2013
node :date do |article|
  article.created_at.strftime("%d %b. %Y")
end

node :category do |article|
  Category.find_by_id(article.category_id).name
end

child :comments do |article|
  object @comments
  attributes :content
  node :user do |comment|
    comment.user.name
  end
end
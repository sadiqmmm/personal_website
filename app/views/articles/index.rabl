object @articles

attributes :title, :summary, :picture, :visits

# Return the date in a nicer format: 09 Apr. 2013
node :date do |article|
  article.created_at.strftime("%d %b. %Y")
end

# Comments
node :comments_count do |article|
  article.comments.count
end
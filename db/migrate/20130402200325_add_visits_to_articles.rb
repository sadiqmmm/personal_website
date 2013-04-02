class AddVisitsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :visits, :integer, default: 0
  end
end

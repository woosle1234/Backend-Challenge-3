class AddFontToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :Font, :string
  end
end

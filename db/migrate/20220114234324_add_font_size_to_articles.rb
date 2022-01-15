class AddFontSizeToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :FontSize, :integer
  end
end

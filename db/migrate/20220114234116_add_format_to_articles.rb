class AddFormatToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :Format, :string
  end
end

class AddRandomNumberToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :random_number, :integer
  end
end

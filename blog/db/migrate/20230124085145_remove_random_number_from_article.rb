class RemoveRandomNumberFromArticle < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :random_number, :integer
  end
end

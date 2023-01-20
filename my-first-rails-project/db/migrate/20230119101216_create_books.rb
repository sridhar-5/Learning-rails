class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :year_of_publication
      t.string :publisher

      t.timestamps
    end
  end
end

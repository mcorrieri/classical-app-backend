class CreateComposers < ActiveRecord::Migration[6.1]
  def change
    create_table :composers do |t|
      t.string :name
      t.string :full_name
      t.integer :born
      t.integer :died
      t.string :genre
      t.string :bio

      t.timestamps
    end
  end
end

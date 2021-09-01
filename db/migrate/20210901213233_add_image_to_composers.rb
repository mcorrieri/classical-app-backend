class AddImageToComposers < ActiveRecord::Migration[6.1]
  def change
    add_column :composers, :image, :string
  end
end

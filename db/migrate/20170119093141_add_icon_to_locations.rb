class AddIconToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :icon, :string
  end
end

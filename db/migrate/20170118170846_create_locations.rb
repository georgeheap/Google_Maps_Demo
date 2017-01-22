class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.references :user, foreign_key: true
      t.float :lat
      t.float :lng
      t.string :notes

      t.timestamps
    end
  end
end

class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :age
      t.string :email
      t.timestamps null: false
    end
  end
end

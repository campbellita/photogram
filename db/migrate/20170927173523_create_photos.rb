class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :description
      t.integer :user_id
      t.string :image
      t.string :location

      t.timestamps

    end
  end
end

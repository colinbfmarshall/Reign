class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :user
      t.string :celebrity
      t.string :location
      t.date :time
      t.text :comment

      t.timestamps null: false
    end
  add_attachment :pictures, :image
  end
end

class CreateBloges < ActiveRecord::Migration[8.0]
  def change
    create_table :bloges do |t|
      t.string :title
      t.string :discription
      t.text :image

      t.timestamps
    end
  end
end

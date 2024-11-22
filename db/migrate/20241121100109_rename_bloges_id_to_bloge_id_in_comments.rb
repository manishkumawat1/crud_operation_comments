class RenameBlogesIdToBlogeIdInComments < ActiveRecord::Migration[8.0]
  def change
    rename_column :comments, :bloges_id, :bloge_id
  end
end

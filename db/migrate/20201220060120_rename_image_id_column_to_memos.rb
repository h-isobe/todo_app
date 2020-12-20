class RenameImageIdColumnToMemos < ActiveRecord::Migration[5.2]
  def change
    rename_column :memos, :ImageId, :image_id
  end
end

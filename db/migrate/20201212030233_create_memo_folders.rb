class CreateMemoFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :memo_folders do |t|
      t.integer :memo_id
      t.integer :folder_id

      t.timestamps
    end
  end
end

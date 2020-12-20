class AddImageIdToMemo < ActiveRecord::Migration[5.2]
  def change
    add_column :memos, :ImageId, :string
  end
end

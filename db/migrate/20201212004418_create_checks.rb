class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.integer :memo_id

      t.timestamps
    end
  end
end

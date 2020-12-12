class Memo < ApplicationRecord
  has_many :checks, dependent: :destroy
  has_many :memo_folders, dependent: :destroy

  def checked_by?(memo)
    checks.where(memo_id: memo.id).exists?
  end
end

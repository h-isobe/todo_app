class Folder < ApplicationRecord
  has_many :memo_folders, dependent: :destroy
  has_many :memos, through: :memo_folders
  validates :title, presence: true
  validates :title, length: { maximum: 20 }
end

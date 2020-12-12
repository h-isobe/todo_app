class Folder < ApplicationRecord
  has_many :memo_folders, dependent: :destroy
end

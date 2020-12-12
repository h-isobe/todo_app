class MemoFolder < ApplicationRecord
  belongs_to :memo
  belongs_to :folder
end

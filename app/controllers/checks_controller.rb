class ChecksController < ApplicationController

  def create
    memo = Memo.find(params[:memo_id])
    check = Check.new(memo_id: memo.id)
    check.save
    redirect_to memos_path
  end

  def destroy
    memo = Memo.find(params[:memo_id])
    check = Check.find_by(memo_id: memo.id)
    check.destroy
    redirect_to memos_path
  end
end

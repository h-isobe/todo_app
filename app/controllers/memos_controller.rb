class MemosController < ApplicationController

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.create(memo_params)
    redirect_to memos_path
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    @memo = Memo.find(params[:id])
    @memo.update(memo_params)
    redirect_to memos_path
  end


  private

  def memo_params
    params.require(:memo).permit(:title, :content)
  end
end

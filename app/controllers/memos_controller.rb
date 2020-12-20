class MemosController < ApplicationController

  def index
    @memos = Memo.all
    @folders = Folder.all.order(id: "DESC")
    @folder = Folder.new
  end

  def show
    @memos = Memo.all
    @memo = Memo.find(params[:id])
    @folders = Folder.all.order(id: "DESC")
    @folder = Folder.new
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memos_path
      flash[:notice] = "追加しました"
    else
      render :new
    end
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    @memo = Memo.find(params[:id])
    if @memo.update(memo_params)
      redirect_to memos_path
      flash[:notice] = "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to memos_path
  end


  private

  def memo_params
    params.require(:memo).permit(:title, :content, :image)
  end
end

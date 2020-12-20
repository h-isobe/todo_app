class FoldersController < ApplicationController

  def create
    @folder = Folder.new(folder_params)
    @folder.save
    redirect_to memos_path
  end

  def edit
    @folder = Folder.find(params[:id])
  end

  def update
    @folder = Folder.find(params[:id])
    @folder.update(folder_params)
    redirect_to memos_path
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    redirect_to memos_path
  end

  private

  def folder_params
    params.require(:folder).permit(:title)
  end
end

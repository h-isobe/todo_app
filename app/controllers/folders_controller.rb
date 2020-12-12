class FoldersController < ApplicationController

  def create
    @folder = Folder.create(folder_params)
    redirect_to memos_path
  end

  private

  def folder_params
    params.require(:folder).permit(:title)
  end
end

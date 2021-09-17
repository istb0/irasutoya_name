class VotesController < ApplicationController
  def create
    @title = Title.find(params[:title_id])
    @title.vote(@title)
    redirect_back fallback_location: root_path, success: "投票成功"
  end
end
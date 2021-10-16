class VotesController < ApplicationController
  def create
    @title = Title.find(params[:title_id])
    @title.vote
  end
end
class IllustrationsController < ApplicationController
  def index
    @illustrations = Illustration.all
  end

  def show
    @illustration = Illustration.find(params[:id])
    @title = Title.new
    @titles = @illustration.titles.order(created_at: :desc)
  end
end

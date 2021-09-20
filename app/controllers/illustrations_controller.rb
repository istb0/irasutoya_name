class IllustrationsController < ApplicationController
  def index
    @illustrations = Illustration.all
  end

  def show
    @illustration = Illustration.find(params[:id])
    @title = Title.new
    if params[:type] == 'order_popular'
      @titles = @illustration.titles.order(vote_quantity: :desc)
    else
      @titles = @illustration.titles.order(created_at: :desc)
    end
  end
end

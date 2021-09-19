class TitlesController < ApplicationController
  def create
    @illustration = Illustration.find(params[:illustration_id])
    @title = @illustration.titles.build(title_params)
    @title.save
  end

  private

  def title_params
    params.require(:title).permit(:content, :user_name, :vote_quantity).merge(illustration_id: params[:illustration_id])
  end
end

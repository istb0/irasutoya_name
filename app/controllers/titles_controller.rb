class TitlesController < ApplicationController
  def create
    @illustration = Illustration.find(params[:illustration_id])
    @title = @illustration.titles.build(title_params)
    if @title.save
      redirect_to illustration_path(@title.illustration), success: t('defaults.message.created', item: @title.model_name.human)
    else
      redirect_to illustration_path(@title.illustration), danger: t('defaults.message.not_created', item: @title.model_name.human)
    end
  end

  private

  def title_params
    params.require(:title).permit(:content, :user_name).merge(illustration_id: params[:illustration_id])
  end
end

class IllustrationsController < ApplicationController
  def index
    @illustrations = Illustration.all
  end

  def show
    @illustration = Illustration.find(params[:id])
  end
end

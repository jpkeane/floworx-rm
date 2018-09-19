class EngagementsController < ApplicationController
  def index
    @engagements = Engagement.all
  end

  def show
    @engagement = Engagement.friendly.find(params[:id])
  end
end

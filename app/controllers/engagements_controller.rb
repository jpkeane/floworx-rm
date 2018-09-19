class EngagementsController < ApplicationController
  def index
    @engagements = Engagement.all
  end
end

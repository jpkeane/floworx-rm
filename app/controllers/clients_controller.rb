class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.friendly.find(params[:id])
  end
end

class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.friendly.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:success] = 'Client added successfully'
      redirect_to clients_path
    else
      render 'new'
    end
  end

  def client_params
    params.require(:client).permit(:name, :code)
  end
end

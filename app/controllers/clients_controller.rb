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

  def edit
    @client = Client.friendly.find(params[:id])
  end

  def update
    @client = Client.friendly.find(params[:id])
    if @client.update(client_params)
      flash[:success] = 'Client updated'
      redirect_to @client
    else
      render 'edit'
    end
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

class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def show
    @role = Role.friendly.find(params[:id])
  end

  def edit
    @role = Role.friendly.find(params[:id])
  end

  def update
    @role = Role.friendly.find(params[:id])
    if @role.update(role_params)
      flash[:success] = 'Role updated'
      redirect_to @role
    else
      render 'edit'
    end
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      flash[:success] = 'Role added successfully'
      redirect_to roles_path
    else
      render 'new'
    end
  end

  def role_params
    params.require(:role).permit(:name)
  end
end

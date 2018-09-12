class StaffResourcesController < ApplicationController
  def index
    @staff_resources = StaffResource.all
  end

  def show
    @staff_resource = StaffResource.friendly.find(params[:id])
  end

  def edit
    @staff_resource = StaffResource.friendly.find(params[:id])
  end

  def update
    @staff_resource = StaffResource.friendly.find(params[:id])
    if @staff_resource.update(staff_resource_params)
      flash[:success] = 'Staff Resource updated'
      redirect_to @staff_resource
    else
      render 'edit'
    end
  end

  def create
    @staff_resource = StaffResource.new(staff_resource_params)
    if @staff_resource.save
      flash[:success] = 'Staff Resource added successfully'
      redirect_to staff_resources_path
    else
      render 'new'
    end
  end

  def new
    @staff_resource = StaffResource.new
  end

  def staff_resource_params
    params.require(:staff_resource).permit(:first_name, :last_name, :email_address, :grade_id)
  end
end

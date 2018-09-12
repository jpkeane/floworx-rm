class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def show
    @grade = Grade.friendly.find(params[:id])
  end

  def edit
    @grade = Grade.friendly.find(params[:id])
  end

  def update
    @grade = Grade.friendly.find(params[:id])
    if @grade.update(grade_params)
      flash[:success] = 'Grade updated'
      redirect_to @grade
    else
      render 'edit'
    end
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      flash[:success] = 'Grade added successfully'
      redirect_to grades_path
    else
      render 'new'
    end
  end

  def grade_params
    params.require(:grade).permit(:name, :level)
  end
end

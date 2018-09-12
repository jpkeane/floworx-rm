class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.friendly.find(params[:id])
  end

  def edit
    @skill = Skill.friendly.find(params[:id])
  end

  def update
    @skill = Skill.friendly.find(params[:id])
    if @skill.update(skill_params)
      flash[:success] = 'Skill updated'
      redirect_to @skill
    else
      render 'edit'
    end
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:success] = 'Skill added successfully'
      redirect_to skills_path
    else
      render 'new'
    end
  end

  def skill_params
    params.require(:skill).permit(:name)
  end
end

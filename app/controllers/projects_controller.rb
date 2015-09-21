class ProjectsController < ApplicationController

  before_action :find_project , only:[:show,:edit,:update,:destroy]
  def index
    @projects = Project.all.order("created_at DESC")

  end


  def new
    @project = Project.new
  end


  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project , notice: "Nice one Izzy"

    else
      render :new
    end

  end

  def show

  end

  private

  def project_params

    params.require(:project).permit(:title,:description,:link,:slug)
  end

  def find_project
    @project = Project.friendly.find(params[:id])
  end


end

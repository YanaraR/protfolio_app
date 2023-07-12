class ProjectsController < ApplicationController
  require 'project'

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    case @project.id
    when 1
      @project.download_url = "https://vaova.cl/calendario-marketing-2023/"
      @project.image_url = "1.jpg"
    when 2
      @project.download_url = "https://vaova.cl/como-optimizar-tu-perfil-de-linkedin/"
      @project.image_url = "2.png"
    when 3
      @project.download_url = "https://vaova.cl/como-optimizar-la-biografia-de-instagram-checklist/"
      @project.image_url = "3.png"
    end
  end
end
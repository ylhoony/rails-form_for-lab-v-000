class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
  end

  def create

  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])


    redirect_to student_path(@student)
  end

  private
  def post_params(*args)
    params.require(:school_class).permit(*args)
  end

end

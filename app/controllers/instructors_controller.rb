class InstructorsController < ApplicationController
  
  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    Instructor.create(instructors_params)
    flash[:success] = "Instructor has been successfully created."
    redirect_to instructors_path
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    instructor = Instructor.find(params[:id])
    Instructor.update(instructors_params)
    redirect_to instructors_path
  end

  def destroy
    Instructor.detroy(params[:id])
    redirect_to instructors_path
  end

  private

  def instructors_params
    params.require(:instructor).permit(:f_name, :l_name, :birthday, :education)
  end

end

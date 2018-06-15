class CoursesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:destroy]

  def index
    @courses = Course.all.order(:id)
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    Course.create(course_params)
    flash[:success] = "Course has been successfully created."
    redirect_to courses_path
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    course = Course.find(params[:id])
    course.update(course_params)
    redirect_to courses_path
  end

  def destroy
    Course.destroy(params[:id])
    render json: {status: 'success', message: 'Course was successfully deleted'}
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours)
  end


end

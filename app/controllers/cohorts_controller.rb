class CohortsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:destroy]

  def index
    @cohorts = Cohort.all.order(:start_date)
  end

  def show
    @cohort = Cohort.find(params[:id])
    @instructors = @cohort.instructors.all.order(:l_name)
    @students = @cohort.students.all.order(:l_name)

  end

  def new
    @cohort = Cohort.new
    @courses = Course.pluck(:id, :name).map{|course| course.join(' ')}
    @instructors = Instructor.pluck(:id, :f_name, :l_name).map{|names| names.join(' ')}
    @students = Student.pluck(:id, :f_name, :l_name).map{|names| names.join(' ')}
  end

  def create
    Cohort.create(cohort_params)
    flash[:success] = "Cohort has been successfully created."
    redirect_to cohorts_path
  end

  def edit
    @cohort = Cohort.find(params[:id])
    @courses = Course.pluck(:id, :name).map{|course| course.join(' ')}
  end

  def update
    cohort = Cohort.find(params[:id])
    cohort.update(cohort_params)
    redirect_to cohorts_path
  end

  def destroy
    Cohort.destroy(params[:id])
    render json: {status: 'success', message: 'Cohort was successfully deleted'}
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course, :instructors, :students, :course_id, :instructor_ids, :student_ids)
  end

end

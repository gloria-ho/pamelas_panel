class CohortsStudentsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:destroy]

  def index
    @cohorts_students  = CohortsStudent.all.order(:cohort_id)
  end

  def show
    @cohorts_student = CohortsStudent.find(params[:id])
  end

  def new
    @cohorts = Cohort.pluck(:id, :name).map{|name| name.join(' ')}
    @students = Student.pluck(:id, :f_name, :l_name).map{|names| names.join(' ')}
    @cohorts_student = CohortsStudent.new 
  end

  def create
    CohortsStudent.create(cohort_instructor_params)
    flash[:success] = "Cohort Student has been successfully added."
    redirect_to cohorts_students_path
  end

  def edit
    @cohorts_student = CohortsStudent.find(params[:id])
    @cohorts = Cohort.pluck(:id, :name).map{|name| name.join(' ')}
    @students = Student.pluck(:id, :f_name, :l_name).map{|names| names.join(' ')}
  end

  def update
    cohorts_student = CohortsStudent.find(params[:id])
    cohorts_student.update(cohort_instructor_params)
    redirect_to cohorts_students_path
  end

  def destroy
    CohortsStudent.destroy(params[:id])
    render json: {status: 'success', message: 'Cohort Student was successfully deleted'}
  end

  private

  def cohort_instructor_params
    params.require(:cohorts_student).permit(:student_id, :cohort_id)
  end
end

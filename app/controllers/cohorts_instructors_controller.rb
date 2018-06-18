class CohortsInstructorsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:destroy]
    
  def index
    @cohorts_instructors = CohortsInstructor.all.order(:cohort_id)
  end

  def show
    @cohorts_instructor = CohortsInstructor.find(params[:id])
  end

  def new
    @cohorts = Cohort.all.map{ |c| [c.name, c.id]}
    @instructors = Instructor.all.map{|i| [i.f_name, i.id]}
    @cohorts_instructor = CohortsInstructor.new 
  end

  def create
    CohortsInstructor.create(cohort_instructor_params)
    flash[:success] = "Cohort Instructor has been successfully added."
    redirect_to cohorts_instructors_path
  end

  def edit
    @cohorts_instructor = CohortsInstructor.find(params[:id])
    @cohorts = Cohort.all.map{ |c| [c.name, c.id]}
    @instructors = Instructor.all.map{|i| ["#{i.f_name} #{i.l_name}", i.id]}
  end

  def update
    cohorts_instructor = CohortsInstructor.find(params[:id])
    cohorts_instructor .update(cohort_instructor_params)
    redirect_to cohorts_instructors_path
  end

  def destroy
    CohortsInstructor.destroy(params[:id])
    render json: {status: 'success', message: 'Cohort Instructor was successfully deleted'}
  end

  private

  def cohort_instructor_params
    params.require(:cohorts_instructor).permit(:instructor_id, :cohort_id)
  end
end

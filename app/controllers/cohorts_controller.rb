class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def new
    @cohort = Cohort.new
  end

  def create
    Cohort.create(cohorts_params)
    flash[:success] = "Cohort has been successfully created."
    redirect_to cohorts_path
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    cohort = Cohort.find(params[:id])
    Cohort.update(cohorts_params)
    redirect_to cohorts_path
  end

  def destroy
    Cohort.destroy(cohorts_params)
    redirect_to cohorts_path
  end

  private

  def cohorts_params
    params.require(:cohort).permit(:name, :start_date, :end_date)
  end

end

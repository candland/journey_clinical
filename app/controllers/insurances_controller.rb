class InsurancesController < ApplicationController
  before_action :set_insurance, only: %i[show]

  # GET /insurances or /insurances.json
  def index
    @pagy, @insurances = pagy(Insurance.all)
  end

  # GET /insurances/1 or /insurances/1.json
  def show
  end

  private

  def set_insurance
    @insurance = Insurance.find(params[:id])
  end
end

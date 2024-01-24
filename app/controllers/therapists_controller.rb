class TherapistsController < ApplicationController
  before_action :set_therapist, only: %i[show]

  # GET /therapists or /therapists.json
  def index
    scope = Therapist.all.includes(:insurances)

    if params[:insurance].present?
      ids = InsuranceTherapist.where(insurance_id: params[:insurance]).pluck(:therapist_id).uniq
      scope = scope.where(id: ids)
    end

    if params[:remote].present?
      scope = scope.where(remote: params[:remote] == "yes")
    end

    if params[:city].present?
      scope = scope.where(city: params[:city])
    end

    logger.debug "scope: #{scope.to_sql}"
    @pagy, @therapists = pagy(scope)
  end

  # GET /therapists/1 or /therapists/1.json
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_therapist
    @therapist = Therapist.find(params[:id])
  end
end

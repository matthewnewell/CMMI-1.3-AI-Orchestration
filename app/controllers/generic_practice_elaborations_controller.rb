class GenericPracticeElaborationsController < ApplicationController
  before_action :set_generic_practice_elaboration, only: [:show]

  def index
    @generic_practice_elaborations = GenericPracticeElaboration.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_practice_elaboration
      @generic_practice_elaboration = GenericPracticeElaboration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_practice_elaboration_params
      params.require(:generic_practice_elaboration).permit(:process_area_id, :generic_practice_id, :gp_elaboration)
    end
end

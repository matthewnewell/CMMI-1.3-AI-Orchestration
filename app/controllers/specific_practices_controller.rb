class SpecificPracticesController < ApplicationController
  before_action :set_specific_practice, only: [:show]

  def index
    @specific_practices = SpecificPractice.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_practice
      @specific_practice = SpecificPractice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_practice_params
      params.require(:specific_practice).permit(:name, :summary, :description, :process_area_id, :specific_goal_id)
    end
end

class SpecificGoalsController < ApplicationController
  before_action :set_specific_goal, only: [:show]

  def show
    add_breadcrumb "Process Areas", process_areas_path
    add_breadcrumb @specific_goal.process_area.name, process_area_path(@specific_goal.process_area)
    add_breadcrumb @specific_goal.name
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_goal
      @specific_goal = SpecificGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_goal_params
      params.require(:specific_goal).permit(:name, :description, :process_area_id)
    end
end

class GenericGoalsController < ApplicationController
  before_action :set_generic_goal, only: [:show]

  def index
    add_breadcrumb "Generic Goals"
    @generic_goals = GenericGoal.all
  end

  def show
    add_breadcrumb "Generic Goals", generic_goals_path 
    add_breadcrumb @generic_goal.name
    @generic_practices = GenericPractice.where(generic_goal_id: @generic_goal )
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_goal
      @generic_goal = GenericGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_goal_params
      params.require(:generic_goal).permit(:name, :description)
    end
end

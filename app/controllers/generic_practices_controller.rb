class GenericPracticesController < ApplicationController
  before_action :set_generic_practice, only: [:show]


  def index
    add_breadcrumb "Home", root_path
    add_breadcrumb "Generic Goals", generic_goals_path 
    add_breadcrumb "Generic Practices"
    @generic_practices = GenericPractice.all
  end
 
  def show
    add_breadcrumb "Home", root_path
    add_breadcrumb "Generic Goals", generic_goals_path 
    add_breadcrumb "Generic Practices", generic_practices_path
    add_breadcrumb @generic_practice.name
    @generic_practice_elaborations = GenericPracticeElaboration.where(generic_practice_id: @generic_practice)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_practice
      @generic_practice = GenericPractice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_practice_params
      params.require(:generic_practice).permit(:name, :summary, :description, :generic_goal_id)
    end
end

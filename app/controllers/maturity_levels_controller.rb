class MaturityLevelsController < ApplicationController
  before_action :set_maturity_level, only: [:show]

  def index
    add_breadcrumb "Maturity Levels"
    @maturity_levels = MaturityLevel.all
  end

  def show
    add_breadcrumb "Maturity Levels", maturity_levels_path
    add_breadcrumb @maturity_level.name
    @process_areas = ProcessArea.where(maturity_level_id: @maturity_level)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maturity_level
      @maturity_level = MaturityLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maturity_level_params
      params.require(:maturity_level).permit(:name, :description)
    end
end

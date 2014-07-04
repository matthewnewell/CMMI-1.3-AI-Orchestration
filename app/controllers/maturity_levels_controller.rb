class MaturityLevelsController < ApplicationController
  before_action :set_maturity_level, only: [:show, :edit, :update, :destroy]

  # GET /maturity_levels
  # GET /maturity_levels.json
  def index
    @maturity_levels = MaturityLevel.all
  end

  # GET /maturity_levels/1
  # GET /maturity_levels/1.json
  def show
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

class ProcessAreasController < ApplicationController
  before_action :set_process_area, only: [:show, :edit, :update, :destroy]

  # GET /process_areas
  # GET /process_areas.json
  def index
    @process_areas = ProcessArea.all
  end

  # GET /process_areas/1
  # GET /process_areas/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_area
      @process_area = ProcessArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_area_params
      params.require(:process_area).permit(:name, :purpose, :maturity_level_id, :process_category_id)
    end
end

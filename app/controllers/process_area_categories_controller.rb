class ProcessAreaCategoriesController < ApplicationController
  before_action :set_process_area_category, only: [:show, :edit, :update, :destroy]

  # GET /process_area_categories
  # GET /process_area_categories.json
  def index
    @process_area_categories = ProcessAreaCategory.all
  end

  # GET /process_area_categories/1
  # GET /process_area_categories/1.json
  def show
    @process_areas = ProcessArea.where(process_area_category_id: @process_area_category)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_area_category
      @process_area_category = ProcessAreaCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_area_category_params
      params.require(:process_area_category).permit(:name, :description)
    end
end

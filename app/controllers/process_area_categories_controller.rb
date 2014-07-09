class ProcessAreaCategoriesController < ApplicationController
  before_action :set_process_area_category, only: [:show]

  def index
    @process_area_categories = ProcessAreaCategory.all
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

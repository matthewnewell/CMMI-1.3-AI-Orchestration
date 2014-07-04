class SpecificPracticesController < ApplicationController
  before_action :set_specific_practice, only: [:show, :edit, :update, :destroy]

  # GET /specific_practices
  # GET /specific_practices.json
  def index
    @specific_practices = SpecificPractice.all
  end

  # GET /specific_practices/1
  # GET /specific_practices/1.json
  def show
  end

  # GET /specific_practices/new
  def new
    @specific_practice = SpecificPractice.new
  end

  # GET /specific_practices/1/edit
  def edit
  end

  # POST /specific_practices
  # POST /specific_practices.json
  def create
    @specific_practice = SpecificPractice.new(specific_practice_params)

    respond_to do |format|
      if @specific_practice.save
        format.html { redirect_to @specific_practice, notice: 'Specific practice was successfully created.' }
        format.json { render action: 'show', status: :created, location: @specific_practice }
      else
        format.html { render action: 'new' }
        format.json { render json: @specific_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_practices/1
  # PATCH/PUT /specific_practices/1.json
  def update
    respond_to do |format|
      if @specific_practice.update(specific_practice_params)
        format.html { redirect_to @specific_practice, notice: 'Specific practice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @specific_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_practices/1
  # DELETE /specific_practices/1.json
  def destroy
    @specific_practice.destroy
    respond_to do |format|
      format.html { redirect_to specific_practices_url }
      format.json { head :no_content }
    end
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

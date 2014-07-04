class SpecificPracticeElaborationsController < ApplicationController
  before_action :set_specific_practice_elaboration, only: [:show, :edit, :update, :destroy]

  # GET /specific_practice_elaborations
  # GET /specific_practice_elaborations.json
  def index
    @specific_practice_elaborations = SpecificPracticeElaboration.all
  end

  # GET /specific_practice_elaborations/1
  # GET /specific_practice_elaborations/1.json
  def show
  end

  # GET /specific_practice_elaborations/new
  def new
    @specific_practice_elaboration = SpecificPracticeElaboration.new
  end

  # GET /specific_practice_elaborations/1/edit
  def edit
  end

  # POST /specific_practice_elaborations
  # POST /specific_practice_elaborations.json
  def create
    @specific_practice_elaboration = SpecificPracticeElaboration.new(specific_practice_elaboration_params)

    respond_to do |format|
      if @specific_practice_elaboration.save
        format.html { redirect_to @specific_practice_elaboration, notice: 'Specific practice elaboration was successfully created.' }
        format.json { render action: 'show', status: :created, location: @specific_practice_elaboration }
      else
        format.html { render action: 'new' }
        format.json { render json: @specific_practice_elaboration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_practice_elaborations/1
  # PATCH/PUT /specific_practice_elaborations/1.json
  def update
    respond_to do |format|
      if @specific_practice_elaboration.update(specific_practice_elaboration_params)
        format.html { redirect_to @specific_practice_elaboration, notice: 'Specific practice elaboration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @specific_practice_elaboration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_practice_elaborations/1
  # DELETE /specific_practice_elaborations/1.json
  def destroy
    @specific_practice_elaboration.destroy
    respond_to do |format|
      format.html { redirect_to specific_practice_elaborations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_practice_elaboration
      @specific_practice_elaboration = SpecificPracticeElaboration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_practice_elaboration_params
      params.require(:specific_practice_elaboration).permit(:process_area_id, :specific_practice_id, :sp_elaboration)
    end
end

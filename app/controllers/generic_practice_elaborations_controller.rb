class GenericPracticeElaborationsController < ApplicationController
  before_action :set_generic_practice_elaboration, only: [:show, :edit, :update, :destroy]

  # GET /generic_practice_elaborations
  # GET /generic_practice_elaborations.json
  def index
    @generic_practice_elaborations = GenericPracticeElaboration.all
  end

  # GET /generic_practice_elaborations/1
  # GET /generic_practice_elaborations/1.json
  def show
  end

  # GET /generic_practice_elaborations/new
  def new
    @generic_practice_elaboration = GenericPracticeElaboration.new
  end

  # GET /generic_practice_elaborations/1/edit
  def edit
  end

  # POST /generic_practice_elaborations
  # POST /generic_practice_elaborations.json
  def create
    @generic_practice_elaboration = GenericPracticeElaboration.new(generic_practice_elaboration_params)

    respond_to do |format|
      if @generic_practice_elaboration.save
        format.html { redirect_to @generic_practice_elaboration, notice: 'Generic practice elaboration was successfully created.' }
        format.json { render action: 'show', status: :created, location: @generic_practice_elaboration }
      else
        format.html { render action: 'new' }
        format.json { render json: @generic_practice_elaboration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_practice_elaborations/1
  # PATCH/PUT /generic_practice_elaborations/1.json
  def update
    respond_to do |format|
      if @generic_practice_elaboration.update(generic_practice_elaboration_params)
        format.html { redirect_to @generic_practice_elaboration, notice: 'Generic practice elaboration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @generic_practice_elaboration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_practice_elaborations/1
  # DELETE /generic_practice_elaborations/1.json
  def destroy
    @generic_practice_elaboration.destroy
    respond_to do |format|
      format.html { redirect_to generic_practice_elaborations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_practice_elaboration
      @generic_practice_elaboration = GenericPracticeElaboration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_practice_elaboration_params
      params.require(:generic_practice_elaboration).permit(:process_area_id, :generic_practice_id, :gp_elaboration)
    end
end

class GenericPracticesController < ApplicationController
  before_action :set_generic_practice, only: [:show, :edit, :update, :destroy]

  # GET /generic_practices
  # GET /generic_practices.json
  def index
    @generic_practices = GenericPractice.all
  end

  # GET /generic_practices/1
  # GET /generic_practices/1.json
  def show
  end

  # GET /generic_practices/new
  def new
    @generic_practice = GenericPractice.new
  end

  # GET /generic_practices/1/edit
  def edit
  end

  # POST /generic_practices
  # POST /generic_practices.json
  def create
    @generic_practice = GenericPractice.new(generic_practice_params)

    respond_to do |format|
      if @generic_practice.save
        format.html { redirect_to @generic_practice, notice: 'Generic practice was successfully created.' }
        format.json { render action: 'show', status: :created, location: @generic_practice }
      else
        format.html { render action: 'new' }
        format.json { render json: @generic_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_practices/1
  # PATCH/PUT /generic_practices/1.json
  def update
    respond_to do |format|
      if @generic_practice.update(generic_practice_params)
        format.html { redirect_to @generic_practice, notice: 'Generic practice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @generic_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_practices/1
  # DELETE /generic_practices/1.json
  def destroy
    @generic_practice.destroy
    respond_to do |format|
      format.html { redirect_to generic_practices_url }
      format.json { head :no_content }
    end
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

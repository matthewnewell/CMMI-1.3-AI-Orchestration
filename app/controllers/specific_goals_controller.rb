class SpecificGoalsController < ApplicationController
  before_action :set_specific_goal, only: [:show, :edit, :update, :destroy]

  # GET /specific_goals
  # GET /specific_goals.json
  def index
    @specific_goals = SpecificGoal.all
  end

  # GET /specific_goals/1
  # GET /specific_goals/1.json
  def show
  end

  # GET /specific_goals/new
  def new
    @specific_goal = SpecificGoal.new
  end

  # GET /specific_goals/1/edit
  def edit
  end

  # POST /specific_goals
  # POST /specific_goals.json
  def create
    @specific_goal = SpecificGoal.new(specific_goal_params)

    respond_to do |format|
      if @specific_goal.save
        format.html { redirect_to @specific_goal, notice: 'Specific goal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @specific_goal }
      else
        format.html { render action: 'new' }
        format.json { render json: @specific_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_goals/1
  # PATCH/PUT /specific_goals/1.json
  def update
    respond_to do |format|
      if @specific_goal.update(specific_goal_params)
        format.html { redirect_to @specific_goal, notice: 'Specific goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @specific_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_goals/1
  # DELETE /specific_goals/1.json
  def destroy
    @specific_goal.destroy
    respond_to do |format|
      format.html { redirect_to specific_goals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_goal
      @specific_goal = SpecificGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_goal_params
      params.require(:specific_goal).permit(:name, :description, :process_area_id)
    end
end

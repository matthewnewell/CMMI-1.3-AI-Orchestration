class GenericGoalsController < ApplicationController
  before_action :set_generic_goal, only: [:show, :edit, :update, :destroy]

  # GET /generic_goals
  # GET /generic_goals.json
  def index
    @generic_goals = GenericGoal.all
  end

  # GET /generic_goals/1
  # GET /generic_goals/1.json
  def show
  end

  # GET /generic_goals/new
  def new
    @generic_goal = GenericGoal.new
  end

  # GET /generic_goals/1/edit
  def edit
  end

  # POST /generic_goals
  # POST /generic_goals.json
  def create
    @generic_goal = GenericGoal.new(generic_goal_params)

    respond_to do |format|
      if @generic_goal.save
        format.html { redirect_to @generic_goal, notice: 'Generic goal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @generic_goal }
      else
        format.html { render action: 'new' }
        format.json { render json: @generic_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_goals/1
  # PATCH/PUT /generic_goals/1.json
  def update
    respond_to do |format|
      if @generic_goal.update(generic_goal_params)
        format.html { redirect_to @generic_goal, notice: 'Generic goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @generic_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_goals/1
  # DELETE /generic_goals/1.json
  def destroy
    @generic_goal.destroy
    respond_to do |format|
      format.html { redirect_to generic_goals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_goal
      @generic_goal = GenericGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_goal_params
      params.require(:generic_goal).permit(:name, :description)
    end
end

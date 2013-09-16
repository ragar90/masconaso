class TeamsController < ApplicationController
  before_action :authenticate_player!
  before_action :set_team, only: [:show, :edit, :update, :destroy. :join_league]

  # GET /teams
  # GET /teams.json
  def index
    @teams = current_player.teams
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)
    @team.captain = current_player
    respond_to do |format|
      if @team.save
        Signing.massive_invitation(params[:signings], @team)
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team }
      else
        format.html { render action: 'new' }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        Signing.massive_invitation(params[:signings], @team)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
  end

  def join_league
    @league = League.where(id:params[:league_id] )
    @competition = Competition.new(team_id:@team.id, :league_id: params[:league_id])
    if @competition.save
      format.html { redirect_to root_path, notice: 'Your Team Has join #{@league.name.titleize}' }
      format.json { head :no_content }
    else
      format.html { redirect_to root_path, notice: 'Something wrong happen' }
      format.json { render json: @competition.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
      @player = current_player
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :sport_id, :description)
    end
end

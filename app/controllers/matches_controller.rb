class MatchesController < ApplicationController
  before_action :authenticate_player!
  before_action :set_owners
  before_action :set_match, only:[:show,:edit,:update,:delete, :confirm]
  
  def new
    @match = Match.new(team2_id:params[:team2_id], dated_to: 3.days.from_now)
    render layout: params[:layout]
  end

  def index
    @matches = Match.where(team1_id: @team.id)
  end

  def show
  end

  def create
    @match = Match.new(match_params)

    if @match.save
      set_flash_message(:notice, "Tu reto ha sido enviado")
      respond_to do |format|
        format.html{redirect_to root_path}
        format.json{ render json: @match}
      end
    else
      respond_to do |format|
        format.html{render action: "new"}
        format.json{ render json: @match.errors,status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to root_path, notice: 'Tu reto fue cambiado.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  def cancel
    @match.is_cancel = true
    @match.save
    redirect_to root_path
  end

  def confirm
    @match.is_confirm = true
    @match.save
    redirect_to root_path
  end

  private 
    def set_owners
      @team = Team.find(params[:team_id])
      @player = current_player
    end

    def set_match
      @match = @team.matches.where(id:params[:id])
      @layout = params[:layout] || false
    end

    def match_params
      params.require(:team).permit!
    end
end

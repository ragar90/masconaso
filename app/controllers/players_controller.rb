class PlayersController < Devise::RegistrationsController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/1/edit
  def edit
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.close_account
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.where(id: params[:id]) || current_player
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params[:player]
    end
end

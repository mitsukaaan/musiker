class Admin::PlayersController < ApplicationController

    def new
        @player = Player.new
    end

    def index
        @players = Player.all
    end

    def create
        player = Player.new(player_params)
        player.save
        redirect_to admin_players_path
    end

    def destroy
    end

    def edit
    end

    private
     def player_params
      params.require(:player).permit(:name,:instrument,:introduction)
     end
end

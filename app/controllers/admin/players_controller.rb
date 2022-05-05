class Admin::PlayersController < ApplicationController

    def new
        @player = Player.new
       
        arr = []
        Player.instruments.each do |key, value|
         arr.push([I18n.t("enums.player.instrument.#{key}"), value])
        end
        @arr = arr
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
        @player = Player.find(params[:id])
    end


    def update
        player = Player.find(params[:id])
        player.update(player_params)
        redirect_to admin_players_path
    end

    private
     def player_params
      params.require(:player).permit(:name,:introduction).merge(instrument: params[:player][:instrument].to_i)
     end
end

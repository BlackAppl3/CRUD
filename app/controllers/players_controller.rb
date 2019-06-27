class PlayersController < ApplicationController

  attr_accessor :game, :team, :player, :temp

  def index
    @game = Game.all
    @team = Team.all
    @player = Player.all
  end

  def add_players
    if params.has_key? "NAME"
           obj = Player.new 
           obj.team_id = params["ID"]
           obj.playername = params["NAME"]
           if obj.save
               redirect_to "/players/index"
           end 
    end
   end

  def delete
    @val = Player.find(params["id"])
    if @val.destroy
       redirect_to "/players/index"
    end
  end

  def show 

    @val = Player.find(params["id"])
    #@temp = Player.find_by("team_id": params["id"])
    #  val = temp.team_id
     if @val == 'nil'
      redirect_to "/players/index"
     end

    #  @temp_val = Team.find_by("playerno": val)
    #  if @temp_val == 'nil'
    #     redirect_to "/players/index"
    #  end
  end

end
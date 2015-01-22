class TournamentController < ApplicationController

  before_action :authenticate_user!

  def new
    
  end

  def leaderboard
    @leaders = Leader.order('count desc')
  end

  def vote

  end

end
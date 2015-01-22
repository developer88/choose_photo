class TournamentController < ApplicationController

  before_action :authenticate_user!

  def new
    @photos = Photo.get
  end

  def leaderboard
    @leaders = Leader.order('count desc')
  end

  def vote
    Leader.store(params[:image])
    head :ok
  end

end
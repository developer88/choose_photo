Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index'

  get  'tournament/new',                to: 'tournament#new'
  get  'tournament/leaderboard',        to: 'tournament#leaderboard'
  post 'tournament/vote/',              to: 'tournament#vote', as: :vote_tournament

end

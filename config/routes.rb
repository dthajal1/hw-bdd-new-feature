Rottenpotatoes::Application.routes.draw do

  get 'movies/:id/similar' => 'movies#show_by_director', as: :same_director

  resources :movies
  # Add new routes here
  root :to => redirect('/movies')
end

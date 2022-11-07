Rottenpotatoes::Application.routes.draw do

  get 'movies/:id/similar' => 'movies#show_by_director', as: :similar_movies

  resources :movies

  # Add new routes here
  root :to => redirect('/movies')
end

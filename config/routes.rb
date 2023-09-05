Rails.application.routes.draw do
  get 'director', to: "director#index_directores" 
  get 'director/:id', to: "director#id_director"
  get "directors/oscars", to: "director#oscars"
end

Rails.application.routes.draw do
  post "directors", to: "director#create_director"
end

Rails.application.routes.draw do
  delete "director/:id", to: "director#erase_dir"
  delete "directors", to: "director#erase_dirs"
end

Rails.application.routes.draw do
  post 'movies', to: "movie#create_movie" 
end
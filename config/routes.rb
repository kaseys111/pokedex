Rails.application.routes.draw do
  # Routes for the Poketype resource:
  # CREATE
  get "/poketypes/new", :controller => "poketypes", :action => "new"
  post "/create_poketype", :controller => "poketypes", :action => "create"

  # READ
  get "/poketypes", :controller => "poketypes", :action => "index"
  get "/poketypes/:id", :controller => "poketypes", :action => "show"

  # UPDATE
  get "/poketypes/:id/edit", :controller => "poketypes", :action => "edit"
  post "/update_poketype/:id", :controller => "poketypes", :action => "update"

  # DELETE
  get "/delete_poketype/:id", :controller => "poketypes", :action => "destroy"
  #------------------------------

  # Routes for the Battle resource:
  # CREATE
  get "/battles/new", :controller => "battles", :action => "new"
  post "/create_battle", :controller => "battles", :action => "create"

  # READ
  get "/battles", :controller => "battles", :action => "index"
  get "/battles/:id", :controller => "battles", :action => "show"

  # UPDATE
  get "/battles/:id/edit", :controller => "battles", :action => "edit"
  post "/update_battle/:id", :controller => "battles", :action => "update"

  # DELETE
  get "/delete_battle/:id", :controller => "battles", :action => "destroy"
  #------------------------------

  # Routes for the Tm resource:
  # CREATE
  get "/tms/new", :controller => "tms", :action => "new"
  post "/create_tm", :controller => "tms", :action => "create"

  # READ
  get "/tms", :controller => "tms", :action => "index"
  get "/tms/:id", :controller => "tms", :action => "show"

  # UPDATE
  get "/tms/:id/edit", :controller => "tms", :action => "edit"
  post "/update_tm/:id", :controller => "tms", :action => "update"

  # DELETE
  get "/delete_tm/:id", :controller => "tms", :action => "destroy"
  #------------------------------

  # Routes for the Type resource:
  # CREATE
  get "/types/new", :controller => "types", :action => "new"
  post "/create_type", :controller => "types", :action => "create"

  # READ
  get "/types", :controller => "types", :action => "index"
  get "/types/:id", :controller => "types", :action => "show"

  # UPDATE
  get "/types/:id/edit", :controller => "types", :action => "edit"
  post "/update_type/:id", :controller => "types", :action => "update"

  # DELETE
  get "/delete_type/:id", :controller => "types", :action => "destroy"
  #------------------------------

  # Routes for the Pokemon resource:
  # CREATE
  get "/pokemons/new", :controller => "pokemons", :action => "new"
  post "/create_pokemon", :controller => "pokemons", :action => "create"

  # lEVELS
  get "/pokemons/levels", :controller => "pokemons", :action => "levels"

  # READ
  get "/pokemons", :controller => "pokemons", :action => "index"
  get "/pokemons/:id", :controller => "pokemons", :action => "show"

  # UPDATE
  get "/pokemons/:id/edit", :controller => "pokemons", :action => "edit"
  post "/update_pokemon/:id", :controller => "pokemons", :action => "update"

  # DELETE
  get "/delete_pokemon/:id", :controller => "pokemons", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

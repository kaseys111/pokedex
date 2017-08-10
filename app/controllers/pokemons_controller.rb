class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all.order(index: :asc)

    render("pokemons/index.html.erb")
  end

  def levels
    @pokemons = Pokemon.all

    render("pokemons/levels.html.erb")
  end

  def show
    @pokemon = Pokemon.find(params[:id])

    render("pokemons/show.html.erb")
  end

  def new
    @pokemon = Pokemon.new

    render("pokemons/new.html.erb")
  end

  def create
    @pokemon = Pokemon.new

    @pokemon.index = params[:index]
    @pokemon.creature = params[:creature]
    @pokemon.level = params[:level]
    @pokemon.new_move_level = params[:new_move_level]
    @pokemon.new_move = params[:new_move]
    @pokemon.move_effect = params[:move_effect]
    @pokemon.evolve_level = params[:evolve_level]
    @pokemon.other = params[:other]

    save_status = @pokemon.save

    if save_status == true
      redirect_to("/pokemons/#{@pokemon.id}", :notice => "Pokemon created successfully.")
    else
      render("pokemons/new.html.erb")
    end
  end

  def edit
    @pokemon = Pokemon.find(params[:id])

    render("pokemons/edit.html.erb")
  end

  def update
    @pokemon = Pokemon.find(params[:id])

    @pokemon.index = params[:index]
    @pokemon.creature = params[:creature]
    @pokemon.level = params[:level]
    @pokemon.new_move_level = params[:new_move_level]
    @pokemon.new_move = params[:new_move]
    @pokemon.move_effect = params[:move_effect]
    @pokemon.evolve_level = params[:evolve_level]
    @pokemon.other = params[:other]

    save_status = @pokemon.save

    if save_status == true
      redirect_to("/pokemons/#{@pokemon.id}", :notice => "Pokemon updated successfully.")
    else
      render("pokemons/edit.html.erb")
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])

    @pokemon.destroy

    if URI(request.referer).path == "/pokemons/#{@pokemon.id}"
      redirect_to("/", :notice => "Pokemon deleted.")
    else
      redirect_to(:back, :notice => "Pokemon deleted.")
    end
  end
end

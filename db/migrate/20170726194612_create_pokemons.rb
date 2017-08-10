class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.integer :index
      t.string :creature
      t.integer :level
      t.integer :new_move_level
      t.string :new_move
      t.string :move_effect
      t.integer :evolve_level
      t.string :other

      t.timestamps

    end
  end
end

class Pokemon < ApplicationRecord
  has_many :poketypes, :class_name => "Poketype", :foreign_key => "pokemon_id"
  has_many :types, through: :poketypes
end

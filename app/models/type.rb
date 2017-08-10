class Type < ApplicationRecord
  has_many :offense_battles, :class_name => "Battle", :foreign_key => "offense_id"
  has_many :defense_battles, :class_name => "Battle", :foreign_key => "defense_id"
  has_many :tms, :class_name => "Tm", :foreign_key => "type_id"
  has_many :poketypes, :class_name => "Poketype", :foreign_key => "type_id"
  has_many :pokemon, through: :poketypes
end

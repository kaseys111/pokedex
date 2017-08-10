class Tm < ApplicationRecord
  belongs_to :type, :class_name => "Type", :foreign_key => "type_id"
end

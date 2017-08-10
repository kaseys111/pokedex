class CreateTms < ActiveRecord::Migration[5.0]
  def change
    create_table :tms do |t|
      t.integer :tm_no
      t.string :move
      t.integer :type_id
      t.string :effect

      t.timestamps

    end
  end
end

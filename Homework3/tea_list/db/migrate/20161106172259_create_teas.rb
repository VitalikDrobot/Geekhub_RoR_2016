class CreateTeas < ActiveRecord::Migration[5.0]
  def change
    create_table :teas do |t|
      t.string :color

      t.timestamps
    end
  end
end

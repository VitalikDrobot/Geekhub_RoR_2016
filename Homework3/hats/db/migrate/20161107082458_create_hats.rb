class CreateHats < ActiveRecord::Migration[5.0]
  def change
    create_table :hats do |t|
      t.string :size

      t.timestamps
    end
  end
end

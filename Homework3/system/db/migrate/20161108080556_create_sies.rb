class CreateSies < ActiveRecord::Migration[5.0]
  def change
    create_table :sies do |t|
      t.string :name

      t.timestamps
    end
  end
end

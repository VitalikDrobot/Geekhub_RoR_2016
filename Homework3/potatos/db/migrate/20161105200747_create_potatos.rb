class CreatePotatos < ActiveRecord::Migration[5.0]
  def change
    create_table :potatos do |t|
      t.float :mas

      t.timestamps
    end
  end
end

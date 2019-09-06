class CreateMoties < ActiveRecord::Migration[5.2]
  def change
    create_table :moties do |t|
      t.string :emotion
      t.integer :intensity
      t.string :cause
      t.string :appearance
      t.string :solution

      t.timestamps
    end
  end
end

class CreateWaterIntakes < ActiveRecord::Migration[7.1]
  def change
    create_table :water_intakes do |t|
      t.decimal :gallons
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

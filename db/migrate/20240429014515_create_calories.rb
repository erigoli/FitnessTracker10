class CreateCalories < ActiveRecord::Migration[7.1]
  def change
    create_table :calories do |t|
      t.integer :amount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

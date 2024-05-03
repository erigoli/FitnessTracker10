class CreateWeightlossgoals < ActiveRecord::Migration[7.1]
  def change
    create_table :weightlossgoals do |t|
      t.integer :value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

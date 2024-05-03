class CreateSleepings < ActiveRecord::Migration[7.1]
  def change
    create_table :sleepings do |t|
      t.integer :value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

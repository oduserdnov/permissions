class CreateOwnings < ActiveRecord::Migration[5.0]
  def change
    create_table :ownings do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.references :role, foreign_key: true, index: true, null: false

      t.timestamps null: false
    end
  end
end

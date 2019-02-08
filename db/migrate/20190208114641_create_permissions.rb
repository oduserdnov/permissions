class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.string :uid, index: { unique: true }, null: false
      t.string :type, null: false
      t.string :mode, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end

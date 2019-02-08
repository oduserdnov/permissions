class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name, null: false
      t.string :uid, index: { unique: true }, null: false

      t.timestamps null: false
    end
  end
end

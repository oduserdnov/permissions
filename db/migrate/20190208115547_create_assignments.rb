class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.references :grantee, polymorphic: true, null: false
      t.references :permission, foreign_key: true, index: true, null: false

      t.timestamps null: false
    end
  end
end

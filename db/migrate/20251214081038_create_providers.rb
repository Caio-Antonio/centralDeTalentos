class CreateProviders < ActiveRecord::Migration[8.0]
  def change
    create_table :providers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :nickname
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end

class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.references :provider, null: false, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end

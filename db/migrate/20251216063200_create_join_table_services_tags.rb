class CreateJoinTableServicesTags < ActiveRecord::Migration[8.0]
  def change
    create_table :services_tags, id: false do |t|
      t.references :service, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
    end
  end
end

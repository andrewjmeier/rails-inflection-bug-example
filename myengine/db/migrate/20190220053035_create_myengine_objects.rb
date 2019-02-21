class CreateMyEngineObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :myengine_objects do |t|
      t.string :name, limit: 100, null: false
    end
  end
end

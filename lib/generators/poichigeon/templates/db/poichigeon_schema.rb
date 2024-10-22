ActiveRecord::Schema[8.0].define(version: 1) do
  create_table :poichigeon_meteores, force: :cascade do |t|
    t.string :klass_type
    t.integer :model_id
    t.string :path
    t.integer :views
  
    t.timestamps
  end
end

class CreateMeteoreTable < ActiveRecord::Migration[8.0]
  create_table :poichigeon_meteores, force: :cascade do |t|
    t.string :klass_type
    t.integer :model_id
    t.string :callback
    t.string :targets
    t.string :path
    t.integer :views
  
    t.timestamps
  end
end
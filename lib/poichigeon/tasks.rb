namespace :poichigeon do
  desc "load poichigeon_schema"
  task load_schema: :environment do
    unless ActiveRecord::Base.connection.table_exists? :poichigeon_meteores
      schema_path = Rails.root.join "db", "poichigeon_schema.rb"
      if File.exist? schema_path
        puts "load poichigeon from db/poichigeon_schema.rb"
        load schema_path
      end
    end
  end  
end
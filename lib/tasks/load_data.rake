namespace :db do
  desc 'Loads OTA 2011B DESCRIPTIVE CODE TABLES'
  task :load_data  do
    load_data_path = File.join(File.dirname(__FILE__), '..', '..', 'db', 'load_data')
    
    #rake db:data:load_dir dir='load_codes' 
   # Rake::Task['db:load_data'].reenable
    Rake::Task['db:load_data'].invoke(load_data_path)
  end
end

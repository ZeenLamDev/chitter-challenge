require './lib/db_connection.rb'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('chitter_manager_test')
else
  DatabaseConnection.setup('chitter_manager')
end
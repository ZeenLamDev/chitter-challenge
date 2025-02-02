require 'pg'

class DatabaseConnection

  def self.connection
    @connection
  end

  def self.setup(database_name)
    @connection = PG.connect(dbname: database_name)
  end

  def self.query(sql)
    @connection.exec(sql)
  end
end
class Pokemon
  @@all = []

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(id, name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon")
  end

  def self.find
  end


end

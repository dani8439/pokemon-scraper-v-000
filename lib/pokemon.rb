class Pokemon
  @@all = []

  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(id, name, type, db)
    db.execute("INSERT INTO pokemon(id, name, type) VALUES (?, ?, ?)", id, name, type)
  end

  def self.find
  end


end

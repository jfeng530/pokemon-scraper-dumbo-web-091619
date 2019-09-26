class Pokemon
  
  attr_accessor :name, :type, :id, :db 
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end 
  
  def self.save(name, type, db)
    if self.id
      self.update
    else
      sql = <<-SQL
        INSERT INTO pokemon (name, type, db)
        VALUES (?, ?)
      SQL
    
      DB[:conn].execute(sql, self.name, self.grade)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    end
  end 
  
  
  
end

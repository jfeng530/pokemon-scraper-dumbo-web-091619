class Pokemon
  
  attr_accessor :name, :type, :id, :db 
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end 
  
  def self.save(name, type, db)
    
  end 
  
  
  
end

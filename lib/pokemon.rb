class Pokemon
  attr_accessor :id, :name , :type , :db
  @@all = []

def initialize(id = 1, name = "Pikachu", type = 'electric' , db)
  @id = id
  @name = name
  @type = type
  @db = db

end

def self.all
  @@all
end

def self.save(name , type , db)
  db.execute("INSERT INTO POKEMON (name , type) VALUES (?, ?)" , name , type)
end

def self.find(id , db)
   element =db.execute("SELECT * FROM POKEMON WHERE ID= ? " , id).first
   self.new(element[0] , element[1] , element[2] ,db)
end


end
